
basic_model_files   =   [
    "particles.py",
    "couplings.py",
    "lorentz.py",
    "parameters.py",
    "vertices.py",
    "coupling_orders.py",
]

extra_model_files   =   [
    "decays.py",
    "form_factors.py",
    "propagators.py",
    "CT_vertices.py"
]

function check_model(model_path::String)
    @assert isdir(model_path)
    
    @assert all(
        isfile,
        map(
            file_name -> joinpath(model_path, file_name),
            basic_model_files
        )
    )
end

function read_CT_vertices(model_path::String)::Vector{String}
    file_path   =   joinpath(model_path, "CT_vertices.py")
    if !isfile(file_path)
        return  String[]
    end
end

function read_couplings(model_path::String)::Vector{String}
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

    coupling_str_list   =   String[]
    for (begin_line_index, end_line_index) ∈ zip(begin_line_indices, end_line_indices)
        text    =   join(file_contents[begin_line_index:end_line_index], "")
        text    =   replace(text, ''' => '"')

        text    =   replace(text,
            "**" => "^",
            "cmath." => "",
            "complexconjugate" => "conj",
            ".*" => ". *"
        )
        
        ori_str_range   =   findfirst(r"\{.+\}", text)
        @assert !isnothing(ori_str_range)
        ori_str         =   text[ori_str_range]

        order_name_range_list   =   findall(r"\"\w+\"", ori_str)
        order_order_range_list  =   findall(r":\d+", ori_str)
        fin_str =   "Dict{String, Int}(" * join(
            [
                ori_str[order_name_range] * " => " * ori_str[order_order_range][2:end]
                for (order_name_range, order_order_range) ∈ zip(order_name_range_list, order_order_range_list)
            ], ", "
        ) * ")"

        text    =   replace(text, ori_str => fin_str)

        push!(coupling_str_list, (string ∘ Meta.parse)(text))
    end

    return  coupling_str_list
end

function read_coupling_orders(model_path::String)::Vector{String}
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

    coupling_order_str_list =   String[]
    for (begin_line_index, end_line_index) ∈ zip(begin_line_indices, end_line_indices)
        text    =   join(file_contents[begin_line_index:end_line_index], "")
        text    =   replace(text, ''' => '"')
        push!(coupling_order_str_list, (string ∘ Meta.parse)(text))
    end

    return  coupling_order_str_list
end

function read_decays(model_path::String)::Vector{String}
    file_path   =   joinpath(model_path, "decays.py")
    if !isfile(file_path)
        return  String[]
    end

    file_contents   =   readlines(file_path)
    begin_line_indices  =   findall(
        contains("Decay("),
        file_contents
    )
    end_line_indices    =   map(
        begin_line_index -> findnext(endswith(')'), file_contents, begin_line_index),
        begin_line_indices
    )

    decay_str_list  =   String[]
    for (begin_line_index, end_line_index) ∈ zip(begin_line_indices, end_line_indices)
        text    =   join(file_contents[begin_line_index:end_line_index], "")

        text    =   replace(text, ''' => '"')
        text    =   replace(text,
            "P." => "Particles.",
        )

        text    =   replace(text,
            "{" => "Dict{Tuple, String}(",
            ":" => "=>",
            "}" => ")"
        )

        text    =   replace(text,
            "**" => "^",
            "cmath." => "",
            "complexconjugate" => "conj",
            ".*" => ". *"
        )

        push!(decay_str_list, (string ∘ Meta.parse)(text))
    end

    pushfirst!(decay_str_list, "import  ..Particles\n\n")
    return  decay_str_list
end

function read_form_factors(model_path::String)::Vector{String}
    file_path   =   joinpath(model_path, "form_factors.py")
    if !isfile(file_path)
        return  String[]
    end
end

function read_lorentz(model_path::String)::Vector{String}
    file_path   =   joinpath(model_path, "lorentz.py")
    @assert isfile(file_path)

    file_contents   =   readlines(file_path)
    begin_line_indices  =   findall(
        contains("Lorentz("),
        file_contents
    )
    end_line_indices    =   map(
        begin_line_index -> findnext(endswith(')'), file_contents, begin_line_index),
        begin_line_indices
    )
    
    lorentz_str_list    =   String[]
    for (begin_line_index, end_line_index) ∈ zip(begin_line_indices, end_line_indices)
        text    =   join(file_contents[begin_line_index:end_line_index], "")
        text    =   replace(text, ''' => '"')
        text    =   replace(text, "ForFac" => "FormFactors")
        text    =   replace(text,
            "**" => "^",
            "cmath." => "",
            "complexconjugate" => "conj",
            ".*" => ". *"
        )
        push!(lorentz_str_list, (string ∘ Meta.parse)(text))
    end
    
    pushfirst!(lorentz_str_list, "import  ..FormFactors\n\n")
    return  lorentz_str_list
end

function read_model(model_path::String)::Dict{String, Vector{String}}
    check_model(model_path)

    return  Dict{String, Union{String, Vector{String}}}(
        "particles"         =>  read_particles(model_path),
        "couplings"         =>  read_couplings(model_path),
        "lorentz"           =>  read_lorentz(model_path),
        "parameters"        =>  read_parameters(model_path),
        "vertices"          =>  read_vertices(model_path),
        "coupling_orders"   =>  read_coupling_orders(model_path),

        "decays"            =>  read_decays(model_path),
        "form_factors"      =>  read_form_factors(model_path),
        "propagators"       =>  read_propagators(model_path),
        "CT_vertices"       =>  read_CT_vertices(model_path)
    )
end

function read_parameters(model_path::String)::Vector{String}
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
    
    parameter_str_list  =   String[]
    for (begin_line_index, end_line_index) ∈ zip(begin_line_indices, end_line_indices)
        text    =   join(file_contents[begin_line_index:end_line_index], "")
        text    =   replace(text, ''' => '"')
        text    =   replace(text,
            "**" => "^",
            "cmath." => "",
            "complexconjugate" => "conj",
            ".*" => ". *"
        )
        push!(parameter_str_list, (string ∘ Meta.parse)(text))
    end

    return  parameter_str_list
end

function read_particles(model_path::String)::Vector{String}
    file_path   =   joinpath(model_path, "particles.py")
    @assert isfile(file_path)

    file_contents   =   readlines(file_path)
    begin_line_indices  =   findall(
        line -> contains(line, "Particle(") || contains(line, ".anti()"),
        file_contents
    )
    end_line_indices    =   map(
        begin_line_index -> findnext(endswith(')'), file_contents, begin_line_index),
        begin_line_indices
    )
    
    particle_str_list   =   String[]
    for (begin_line_index, end_line_index) ∈ zip(begin_line_indices, end_line_indices)
        text    =   join(file_contents[begin_line_index:end_line_index], "")

        text    =   replace(text, ''' => '"')
        text    =   replace(text, "True" => "true", "False" => "false")
        text    =   replace(text, "Param." => "Parameters.")

        anti_range  =   findfirst(r"\w+.anti\(\)", text)
        if !isnothing(anti_range)
            anti_text   =   text[anti_range]
            text    =   replace(text,
                anti_text => "anti(" * (first ∘ splitext)(anti_text) * ")"
            )
        end

        push!(particle_str_list, (string ∘ Meta.parse)(text))
    end

    pushfirst!(particle_str_list, "import  ..Parameters\n\n")
    return  particle_str_list
end

function read_propagators(model_path::String)::Vector{String}
    file_path   =   joinpath(model_path, "propagators.py")
    if !isfile(file_path)
        return  String[]
    end
end

function read_vertices(model_path::String)::Vector{String}
    file_path   =   joinpath(model_path, "vertices.py")
    @assert isfile(file_path)

    file_contents   =   readlines(file_path)
    begin_line_indices  =   findall(
        contains("Vertex("),
        file_contents
    )
    end_line_indices    =   map(
        begin_line_index -> findnext(endswith(')'), file_contents, begin_line_index),
        begin_line_indices
    )

    vertex_str_list =   String[]
    for (begin_line_index, end_line_index) ∈ zip(begin_line_indices, end_line_indices)
        text    =   join(file_contents[begin_line_index:end_line_index], "")

        text    =   replace(text, ''' => '"')
        text    =   replace(text,
            "P." => "Particles.",
            "L." => "LorentzIndices.",
            "C." => "Couplings."
        )

        ori_str_range   =   findfirst(r"\{.+\}", text)
        @assert !isnothing(ori_str_range)
        ori_str         =   text[ori_str_range]

        spin_color_pair_range_list  =   findall(r"\(\d+,\d+\)", ori_str)
        coupling_range_list         =   findall(r"Couplings.\w+", ori_str)
        fin_str =   "Dict{Tuple{Int, Int}, Coupling}(" * join(
            [
                ori_str[spin_color_pair_range] * " => " * ori_str[coupling_range]
                for (spin_color_pair_range, coupling_range) ∈ zip(spin_color_pair_range_list, coupling_range_list)
            ], ", "
        ) * ")"

        text    =   replace(text, ori_str => fin_str)

        push!(vertex_str_list, (string ∘ Meta.parse)(text))
    end

    pushfirst!(vertex_str_list, "import  ..Particles\nimport  ..Couplings\nimport  ..LorentzIndices\n\n")
    return  vertex_str_list
end
