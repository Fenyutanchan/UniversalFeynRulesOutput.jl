
struct Parameter{T<:Number}
    name::String
    nature::String
    value::Union{T, Expr, Symbol}
    tex_name::String
    lhablock::Union{String, Missing}
    lhacode::Union{Integer, Missing}

    function Parameter(; kwargs...)
        if kwargs[:nature] == "external" && (
            !haskey(kwargs, :lhablock) || !haskey(kwargs, :lhacode)
        )
            error("Need LHA information for external parameter $(kwargs.name).")
        end

        lhablock    =   haskey(kwargs, :lhablock) ? kwargs[:lhablock] : missing
        lhacode     =   if haskey(kwargs, :lhacode)
            @assert length(kwargs[:lhacode]) == 1
            first(kwargs[:lhacode])
        else
            missing
        end

        value       =   if isa(kwargs[:value], String)
            value_str   =   replace(
                kwargs[:value],
                "**" => "^",
                "cmath." => "",
                "complexconjugate" => "conj",
                ".*" => ". *"
            )
            Meta.parse(value_str)
        else
            @assert isa(kwargs[:value], Number)
            kwargs[:value]
        end

        if kwargs[:type]  ==  "real"
            return  new{Real}(
                kwargs[:name], kwargs[:nature], value,
                kwargs[:texname], lhablock, lhacode
            )
        elseif kwargs[:type]    ==  "complex"
            if isa(value, Real)
                return  new{Complex}(
                    kwargs[:name], kwargs[:nature], complex(value),
                    kwargs[:texname], lhablock, lhacode
                )
            end
            return  new{Complex}(
                kwargs[:name], kwargs[:nature], value,
                kwargs[:texname], lhablock, lhacode
            )
        else
            error("Type $(kwargs.type) is not supported.")
        end
    end
end

struct Particle
    pdg_code::Int
    name::String
    anti_name::String
    spin::Int
    color::Int
    mass::Union{Real, Parameter{Real}, Symbol, Expr}
    width::Union{Real, Parameter{Real}, Symbol, Expr}
    tex_name::String
    anti_tex_name::String
    charge::Union{Integer, Rational}
    optional_properties::Dict{Symbol, Any}
    
    Particle(
        pdg_code::Int,
        name::String,
        anti_name::String,
        spin::Int,
        color::Int,
        mass::Union{Real, Parameter{Real}, Symbol},
        width::Union{Real, Parameter{Real}, Symbol},
        tex_name::String,
        anti_tex_name::String,
        charge::Real,
        optional_properties::Dict{Symbol, Any}
    )   =   new(
        pdg_code, name, anti_name,
        spin, color, mass, width,
        tex_name, anti_tex_name,
        isa(charge, Integer) ? charge : rationalize(charge),
        optional_properties
    )

    function Particle(; kwargs...)
        required_args   =   [
            :pdg_code, :name, :antiname,
            :spin, :color, :mass, :width,
            :texname, :antitexname, :charge
        ]
        optional_properties =   Dict{Symbol, Any}(
            :propagating        =>  true,
            :counter_term       =>  nothing,
            :GoldstoneBoson     =>  false, 
            :propagator         =>  nothing
        )
        for key ∈ setdiff(keys(kwargs), keys(required_args))
            optional_properties[key]    =   kwargs[key]
        end

        charge  =   isa(kwargs[:charge], Integer) ? kwargs[:charge] : rationalize(kwargs[:charge])

        optional_properties[:line]  =   find_line_type(
            kwargs[:spin], kwargs[:color];
            self_conjugate_flag=(kwargs[:name]==kwargs[:antiname])
        )
        new(
            kwargs[:pdg_code],
            kwargs[:name],
            kwargs[:antiname],
            kwargs[:spin],
            kwargs[:color],
            kwargs[:mass],
            kwargs[:width],
            kwargs[:texname],
            kwargs[:antitexname],
            charge,
            optional_properties
        )
    end
end

struct Vertex
    name::String
    particles::Vector{Particle}
    color::Integer
    lorentz
    couplings
end

struct Coupling
    name::String
    value::Union{Expr, Symbol}
    order::Dict{String, Int}

    function Coupling(; kwargs...)
        value   =   if isa(kwargs[:value], String)
            value_str   =   replace(
                kwargs[:value],
                "**" => "^",
                "cmath." => "",
                "complexconjugate" => "conj",
                ".*" => ". *"
            )
            Meta.parse(value_str)
        else
            @assert isa(kwargs[:value], Number)
            kwargs[:value]
        end
        
        return  new(kwargs[:name], value, kwargs[:order])
    end
end

struct Lorentz
    name::String
    spins
    structure

    Lorentz(
        name::String, spins;
        structure::String="external"
    )   =   new(name, spins, structure)
end

struct CouplingOrder
    name::String
    expansion_order::Integer
    hierarchy::Integer
    perturbative_expansion::Integer

    CouplingOrder(;perturbation_expansion::Integer=0, kwargs...)    =   new(
        kwargs[:name],
        kwargs[:expansion_order],
        kwargs[:hierarchy],
        perturbation_expansion
    )
end

struct Decay
    particle
    particle_widths
end

struct FormFactor
    name::String
    type
    value
end
