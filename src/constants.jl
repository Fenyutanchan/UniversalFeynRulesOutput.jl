
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

None    =   nothing

particle_default_optional_properties    =   Dict{Symbol, Any}(
    :propagating        =>  true,
    :counter_term       =>  nothing,
    :goldstone_boson    =>  false, 
    :propagator         =>  nothing
)
