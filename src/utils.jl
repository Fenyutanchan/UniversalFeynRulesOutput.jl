
function anti(p::Particle)::Particle
    if is_self_conjugate(p)
        return  p
    end
    anti_properties =   p.optional_properties[
        [
            :line, :propagating,
            :goldstoneboson,
            :propagator
        ]
    ]

    to_be_flipped_property_names    =   propertynames(p.optional_properties)
    setdiff!(
        to_be_flipped_property_names,
        [
            :line, :propagating,
            :goldstoneboson,
            :propagator
        ]
    )
    for property_name ∈ to_be_flipped_property_names
        anti_properties[property_name] =   - getproperty(p.optional_properties, property_name)
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

is_goldstone_boson(p::Particle) =   p.optional_properties.goldstone_boson
is_self_conjugate(p::Particle)  =   p.name == p.antiname

Base.zero(::Type{Parameter})    =   Parameter(
    name    =   "ZERO",
    nature  =   "internal",
    type    =   "real",
    value   =   "0.0",
    texname =   "0"
)
