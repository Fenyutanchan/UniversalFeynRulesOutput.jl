module  Objects

export  Parameter
export  Particle
export  Coupling
export  Lorentz
export  Vertex
export  CouplingOrder
export  Decay
export  FormFactor

export  anti
export  is_goldstone_boson
export  is_self_conjugate
export  is

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

        value   =   if isa(kwargs[:value], String)
            tmp =   Meta.parse(kwargs[:value])
            if isa(tmp, Real) && kwargs[:type] == "complex"
                complex(tmp)
            else
                tmp
            end
        else
            @assert isa(kwargs[:value], Number)
            if isa(kwargs[:value], Real) && kwargs[:type] == "complex"
                complex(kwargs[:value])
            else
                kwargs[:value]
            end
        end

        if kwargs[:type] == "real"
            return  new{Real}(
                kwargs[:name], kwargs[:nature], value,
                kwargs[:texname], lhablock, lhacode
            )
        elseif kwargs[:type] == "complex"
            # if isa(value, Real)
            #     return  new{Complex}(
            #         kwargs[:name], kwargs[:nature], complex(value),
            #         kwargs[:texname], lhablock, lhacode
            #     )
            # end
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
        isa(charge, AbstractFloat) ? rationalize(charge) : charge,
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
            :GoldstoneBoson     =>  false, 
            :propagator         =>  nothing
        )
        for key ∈ setdiff(keys(kwargs), required_args)
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
    spins::Vector{Integer}
    structure::String

    Lorentz(; structure="exteranl", kwargs...)  =   new(kwargs[:name], kwargs[:spins], structure)
end

struct Vertex
    name::String
    particles::Vector{Particle}
    color::Vector{String}
    lorentz::Vector{Lorentz}
    couplings::Dict{Tuple, Coupling}

    Vertex(; kwargs...) =   new(kwargs[:name], kwargs[:particles], kwargs[:color], kwargs[:lorentz], kwargs[:couplings])
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
    name::String
    particle::Particle
    particle_widths::Dict{Tuple, String}

    Decay(; kwargs...)  =   new(kwargs[:name], kwargs[:particle], kwargs[:partial_widths])
end

struct FormFactor
    name::String
    type
    value
end

function anti(p::Particle)::Particle
    if is_self_conjugate(p)
        return  p
    end

    fixed_properties    =   [:line, :propagating, :GoldstoneBoson, :propagator]

    anti_properties =   Dict{Symbol, Any}()
    for key ∈ fixed_properties
        anti_properties[key]    =   p.optional_properties[key]
    end

    to_be_flipped_property_names    =   setdiff(
        keys(p.optional_properties),
        fixed_properties
    )
    for property_name ∈ to_be_flipped_property_names
        anti_properties[property_name] =   - p.optional_properties[property_name]
    end
    new_color   =   (p.color ∈ [1, 8]) ? p.color : -p.color
    return  Particle(
        -p.pdg_code,
        p.anti_name,
        p.name,
        p.spin,
        new_color,
        p.mass,
        p.width,
        p.anti_tex_name,
        p.tex_name,
        -p.charge,
        anti_properties
    )
end

function find_line_type(spin::Integer, color::Integer; self_conjugate_flag::Bool=false)::String
    if spin == 1
        return  "dashed"
    elseif spin == 2
        if !self_conjugate_flag
            return  "straight"
        elseif color == 1
            return  "swavy"
        else
            return  "scurly"
        end
    elseif spin == 3
        if color == 1
            return "wavy"
        else
            return  "curly"
        end
    elseif spin == 5
        return  "double"
    elseif spin == -1
        return  "dotted"
    else
        return  "dashed"    # not supported
    end
end

is_goldstone_boson(p::Particle) =   p.optional_properties.GoldstoneBoson
is_self_conjugate(p::Particle)  =   p.name == p.anti_name

Base.zero(::Type{Parameter})    =   Parameter(
    name    =   "ZERO",
    nature  =   "internal",
    type    =   "real",
    value   =   "0.0",
    texname =   "0"
)

end
