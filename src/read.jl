
function read_model(model_path::String)
    extra_file_flags    =   check_model(model_path)
    model_name          =   (Symbol ∘ last ∘ splitdir)(model_path)

    all_parameters  =   read_parameters(model_path)
    all_particles   =   read_particles(model_path)

    all_coupling_orders =   read_coupling_orders(model_path)
    all_couplings       =   read_couplings(model_path)

    @show all_parameters
    @show all_particles
    @show all_coupling_orders
    @show all_couplings
end

function check_model(model_path::String)::Vector{Bool}
    @assert isdir(model_path)
    
    @assert all(
        isfile,
        map(
            file_name -> joinpath(model_path, file_name),
            basic_model_files
        )
    )

    return  map(
        file_name -> (isfile ∘ joinpath)(model_path, file_name),
        extra_model_files
    )
end

function read_couplings(model_path::String)::NamedTuple
    file_path   =   joinpath(model_path, "couplings.py")
    @assert isfile(file_path)

    file_contents   =   readlines(file_path)
    begin_line_indices  =   findall(
        contains("Coupling("),
        file_contents
    )
    end_line_indices    =   map(
        begin_line_index -> findnext(endswith(')'), file_contents, begin_line_index),
        begin_line_indices
    )

    text_list   =   String[]
    for (begin_line_index, end_line_index) ∈ zip(begin_line_indices, end_line_indices)
        text    =   join(file_contents[begin_line_index:end_line_index], "")
        text    =   replace(text, ''' => '"')
        
        ori_str_range   =   findfirst(r"\{.+\}", text)
        @assert !isnothing(ori_str_range)
        ori_str         =   text[ori_str_range]

        order_name_range_list   =   findall(r"\"\w+\"", ori_str)
        order_order_range_list  =   findall(r":\d+", ori_str)
        fin_str =   "Dict{String, Int}("
        for (order_name_range, order_order_range) ∈ zip(order_name_range_list, order_order_range_list)
            fin_str *=  ori_str[order_name_range] * " => " * ori_str[order_order_range][2:end]
        end
        fin_str *=  ")"

        text    =   replace(text, ori_str => fin_str)

        push!(text_list, text)
    end

    coupling_dict   =   Dict{Symbol, Coupling}()
    for text ∈ text_list
        expr    =   Meta.parse(text)
        @assert expr.head == :(=)
        @assert length(expr.args) == 2

        eval(expr)  # Notice that this will evaluate the parameter at the module.
        coupling_dict[first(expr.args)] =   eval(first(expr.args))
    end
    
    return  NamedTuple(coupling_dict)
end

function read_coupling_orders(model_path::String)::NamedTuple
    file_path   =   joinpath(model_path, "coupling_orders.py")
    @assert isfile(file_path)

    file_contents   =   readlines(file_path)
    begin_line_indices  =   findall(
        contains("CouplingOrder("),
        file_contents
    )
    end_line_indices    =   map(
        begin_line_index -> findnext(endswith(')'), file_contents, begin_line_index),
        begin_line_indices
    )

    text_list   =   String[]
    for (begin_line_index, end_line_index) ∈ zip(begin_line_indices, end_line_indices)
        text    =   join(file_contents[begin_line_index:end_line_index], "")
        text    =   replace(text, ''' => '"')
        push!(text_list, text)
    end

    coupling_order_dict =   Dict{Symbol, CouplingOrder}()
    for text ∈ text_list
        expr    =   Meta.parse(text)
        @assert expr.head == :(=)
        @assert length(expr.args) == 2

        eval(expr)  # Notice that this will evaluate the coupling order at the module.
        coupling_order_dict[first(expr.args)]   =   eval(first(expr.args))
    end

    return  NamedTuple(coupling_order_dict)
end

function read_parameters(model_path::String)::NamedTuple
    file_path   =   joinpath(model_path, "parameters.py")
    @assert isfile(file_path)

    file_contents   =   readlines(file_path)
    begin_line_indices  =   findall(
        contains("Parameter("),
        file_contents
    )
    end_line_indices    =   map(
        begin_line_index -> findnext(endswith(')'), file_contents, begin_line_index),
        begin_line_indices
    )
    
    text_list   =   String[]
    for (begin_line_index, end_line_index) ∈ zip(begin_line_indices, end_line_indices)
        text    =   join(file_contents[begin_line_index:end_line_index], "")
        text    =   replace(text, ''' => '"')
        push!(text_list, text)
    end

    param_dict  =   Dict{Symbol, Parameter}()
    for text ∈ text_list
        expr    =   Meta.parse(text)
        @assert expr.head == :(=)
        @assert length(expr.args) == 2

        eval(expr)  # Notice that this will evaluate the parameter at the module.
        param_dict[first(expr.args)]    =   eval(first(expr.args))
    end
    
    return  NamedTuple(param_dict)
end

function read_particles(model_path::String)::NamedTuple
    file_path   =   joinpath(model_path, "particles.py")
    @assert isfile(file_path)

    file_contents   =   readlines(file_path)
    begin_line_indices  =   findall(
        contains("Particle("),
        file_contents
    )
    end_line_indices    =   map(
        begin_line_index -> findnext(endswith(')'), file_contents, begin_line_index),
        begin_line_indices
    )
    
    text_list   =   String[]
    for (begin_line_index, end_line_index) ∈ zip(begin_line_indices, end_line_indices)
        text    =   join(file_contents[begin_line_index:end_line_index], "")

        text    =   replace(text, '''     =>  '"')

        while true
            match_range =   findfirst(r"Param.\w+,", text)
            if isnothing(match_range)
                break
            end

            text    =   replace(text, text[match_range] => text[match_range][7:end-1] * ",")
        end
        push!(text_list, text)
    end

    part_dict   =   Dict{Symbol, Particle}()
    for text ∈ text_list
        expr    =   Meta.parse(text)
        @assert expr.head == :(=)
        @assert length(expr.args) == 2
        
        anti_expr_range =   findfirst(r"\w+.anti\(\)", text)
        if !isnothing(anti_expr_range)
            part_dict[first(expr.args)] =   anti(part_dict[Symbol(text[anti_expr_range][begin:end-7])])
            continue
        end

        part_dict[first(expr.args)] =   eval(last(expr.args))
    end
    
    return  NamedTuple(part_dict)
end
