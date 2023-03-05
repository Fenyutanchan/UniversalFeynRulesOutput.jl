
struct Particle
    pdg_code::Int
    name::String
    anti_name::String
    spin::Int
    color::Int
    mass::Real
    width::Real
    tex_name::String
    anti_tex_name::String
    charge::Rational
    optional_properties::Dict{Symbol, Any}
    
    Particle(
        pdg_code::Int, name::String, anti_name::String,
        spin::Integer, color::Integer, mass::Real, width::Real,
        tex_name::String, anti_tex_name::String, charge::Real,
        optional_properties::Dict{Symbol, Any}
    )   =   new(
        pdg_code, name, anti_name,
        spin, color, mass, width,
        tex_name, anti_tex_name, rationalize(charge),
        optional_properties
    )

    function Particle(
        pdg_code::Int, name::String, anti_name::String,
        spin::Integer, color::Integer, mass::Real, width::Real,
        tex_name::String, anti_tex_name::String, charge::Real;
        kwargs...
    )
        optional_properties =   deepcopy(particle_default_optional_properties)
        for key ∈ keys(kwargs)
            optional_properties[key]    =   kwargs[key]
        end
        optional_properties[:line]  =   find_line_type(spin, color)

        return new(
            pdg_code, name, anti_name,
            spin, color, mass, width,
            tex_name, anti_tex_name, rationalize(charge),
            optional_properties
        )
    end
end

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

struct Vertex
    name::String
    particles::Vector{Particle}
    color::Integer
    lorentz
    couplings
end

struct Coupling
    name::String
    value
    order
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
    expansion_order
    hierarchy
    perturbative_expansion

    CouplingOrder(
        expansion_order, hierarchy;
        perturbative_expansion::Integer=0
    )   =   new(expansion_order, hierarchy, perturbative_expansion)
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
