function read_model(model_path::String)
    extra_file_flags    =   check_model(model_path)
    model_name          =   (Symbol ∘ last ∘ splitdir)(model_path)

    all_parameters  =   read_parameters(model_path)
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

        param_dict[first(expr.args)]    =   eval(last(expr.args))
    end
    
    return  NamedTuple(param_dict)
end
