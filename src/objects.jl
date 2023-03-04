
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

struct Parameter
    name::String
    nature
    type
    value
    tex_name::String
    lhablock
    lhacode

    function Parameter(
        name::String, nature, type, value, tex_name::String,
        lhablock, lhacode
    )
        if nature == "external" && (
            isnothing(lhablock) || isnothing(lhacode)
        )
            error("Need LHA information for external parameter $name.")
        end
        return new(
            name, nature, type, value, tex_name,
            lhablock, lhacode
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
