function write_model(model_path::String, contents::Dict{String, Vector{String}})::String
    jl_model_path   =   model_path * ".jl"
    model_name      =   (last ∘ splitdir)(model_path)

    if ispath(jl_model_path)
        rm(jl_model_path; force=true, recursive=true)
    end
    Pkg.generate(jl_model_path)

    ext_path    =   joinpath((dirname ∘ dirname ∘ pathof)(@__MODULE__), "ext")
    ext_files   =   ["objects"]

    model_src_path  =   joinpath(jl_model_path, "src")
    main_model_jl   =   joinpath(model_src_path, (last ∘ splitdir)(jl_model_path))

    for file ∈ ext_files
        cp(
            joinpath(ext_path, "$file.jl"),
            joinpath(model_src_path, "$file.jl");
            force=true
        )
    end

    for key ∈ keys(contents)
        module_name =   make_module_name(key)

        file_head   =   """
        module  $module_name

        using   ..Objects

        export  all_$key

        """
        file_end    =   "\n\nend # $module_name"

        file_path   =   joinpath(model_src_path, "$key.jl")
        open(file_path, "w") do io
            entries =   [(first ∘ split)(line, " = ") for line ∈ filter(!contains("import"), contents[key])]
            write(io,
                file_head * join(
                    contents[key], "\n"
                ) * "\n\n" * "all_$key = (\n    " * join(
                    ["$entry = $entry" for entry ∈ entries], ",\n    "
                ) * "\n)" * file_end
            )
        end
    end

    open(main_model_jl, "w") do io
        file_contents   =   "module  $model_name\n\n"

        for key ∈ keys(contents)
            file_contents   *=    "export  all_$key\n"
        end
        file_contents   *=  "\n"

        file_contents   *=  join(["include(\"$file.jl\")\nusing .$(make_module_name(file))" for file ∈ ext_files], "\n") * "\n\n"

        ordered_including   =   [
            "parameters",
            "particles",
            "form_factors",
            "lorentz",
            "couplings",
        ]
        all_keys    =   push!(
            ordered_including,
            setdiff(keys(contents), ordered_including)...
        )
        for key ∈ all_keys
            file_contents   *=    "include(\"$key.jl\")\nusing .$(make_module_name(key))\n"
        end
        file_contents   *=  "\nend # $model_name"
        write(io, file_contents)
    end

    println("The Julia model is generated at $jl_model_path.")

    return  jl_model_path
end

function make_module_name(input::String)::String
    module_name =   replace(input, first(input) => (uppercase ∘ first)(input); count=1)
    _indices    =   findall('_', module_name)
    for index ∈ _indices
        module_name =   replace(module_name, module_name[index:index+1] => uppercase(module_name[index+1]))
    end
    if module_name == "Lorentz"
        module_name *= "Indices"
    end
    return  module_name
end
