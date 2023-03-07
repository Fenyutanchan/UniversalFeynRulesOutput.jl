# UniversalFeynRulesOutput.jl: A Julia Package for Parsing Universal Feynrules Output (UFO) Format without Python Calls.

## Usage

There is only one API function `convert_model` for converting the UFO models.

```julia
using   UniversalFeynRulesOutput
convert_model( "/path/to/model/" )
```

Then the directory `/path/to/model.jl` will be created automatically, which is the Julia module for UFO model.

## Python Object to Julia Struct

`ext/objects.jl` archives the definition of the Julia structs like `Parameter`, `Particle`, and etc.
This file will be automatically copied to the Julia UFO model folder when the converting begins.
