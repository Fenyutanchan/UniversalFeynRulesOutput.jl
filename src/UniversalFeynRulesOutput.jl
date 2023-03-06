module  UniversalFeynRulesOutput

import  Pkg

export  convert_model

include("read.jl")
include("write.jl")

function convert_model(model_path::String)::String
    contents        =   read_model(model_path)
    return  write_model(model_path, contents)
end

end # module UniversalFeynRulesOutput
