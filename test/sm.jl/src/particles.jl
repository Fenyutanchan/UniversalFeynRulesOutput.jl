module  Particles

using   ..Objects

export  all_particles

import  ..Parameters


a = Particle(pdg_code = 22, name = "a", antiname = "a", spin = 3, color = 1, mass = Parameters.ZERO, width = Parameters.ZERO, texname = "a", antitexname = "a", charge = 0, GhostNumber = 0, LeptonNumber = 0, Y = 0)
Z = Particle(pdg_code = 23, name = "Z", antiname = "Z", spin = 3, color = 1, mass = Parameters.MZ, width = Parameters.WZ, texname = "Z", antitexname = "Z", charge = 0, GhostNumber = 0, LeptonNumber = 0, Y = 0)
W__plus__ = Particle(pdg_code = 24, name = "W+", antiname = "W-", spin = 3, color = 1, mass = Parameters.MW, width = Parameters.WW, texname = "W+", antitexname = "W-", charge = 1, GhostNumber = 0, LeptonNumber = 0, Y = 0)
W__minus__ = anti(W__plus__)
g = Particle(pdg_code = 21, name = "g", antiname = "g", spin = 3, color = 8, mass = Parameters.ZERO, width = Parameters.ZERO, texname = "g", antitexname = "g", charge = 0, GhostNumber = 0, LeptonNumber = 0, Y = 0)
ghA = Particle(pdg_code = 9000001, name = "ghA", antiname = "ghA~", spin = -1, color = 1, mass = Parameters.ZERO, width = Parameters.ZERO, texname = "ghA", antitexname = "ghA~", charge = 0, GhostNumber = 1, LeptonNumber = 0, Y = 0)
ghA__tilde__ = anti(ghA)
ghZ = Particle(pdg_code = 9000002, name = "ghZ", antiname = "ghZ~", spin = -1, color = 1, mass = Parameters.MZ, width = Parameters.WZ, texname = "ghZ", antitexname = "ghZ~", charge = 0, GhostNumber = 1, LeptonNumber = 0, Y = 0)
ghZ__tilde__ = anti(ghZ)
ghWp = Particle(pdg_code = 9000003, name = "ghWp", antiname = "ghWp~", spin = -1, color = 1, mass = Parameters.MW, width = Parameters.WW, texname = "ghWp", antitexname = "ghWp~", charge = 1, GhostNumber = 1, LeptonNumber = 0, Y = 0)
ghWp__tilde__ = anti(ghWp)
ghWm = Particle(pdg_code = 9000004, name = "ghWm", antiname = "ghWm~", spin = -1, color = 1, mass = Parameters.MW, width = Parameters.WW, texname = "ghWm", antitexname = "ghWm~", charge = -1, GhostNumber = 1, LeptonNumber = 0, Y = 0)
ghWm__tilde__ = anti(ghWm)
ghG = Particle(pdg_code = 9000005, name = "ghG", antiname = "ghG~", spin = -1, color = 8, mass = Parameters.ZERO, width = Parameters.ZERO, texname = "ghG", antitexname = "ghG~", charge = 0, GhostNumber = 1, LeptonNumber = 0, Y = 0)
ghG__tilde__ = anti(ghG)
ve = Particle(pdg_code = 12, name = "ve", antiname = "ve~", spin = 2, color = 1, mass = Parameters.ZERO, width = Parameters.ZERO, texname = "ve", antitexname = "ve~", charge = 0, GhostNumber = 0, LeptonNumber = 1, Y = 0)
ve__tilde__ = anti(ve)
vm = Particle(pdg_code = 14, name = "vm", antiname = "vm~", spin = 2, color = 1, mass = Parameters.ZERO, width = Parameters.ZERO, texname = "vm", antitexname = "vm~", charge = 0, GhostNumber = 0, LeptonNumber = 1, Y = 0)
vm__tilde__ = anti(vm)
vt = Particle(pdg_code = 16, name = "vt", antiname = "vt~", spin = 2, color = 1, mass = Parameters.ZERO, width = Parameters.ZERO, texname = "vt", antitexname = "vt~", charge = 0, GhostNumber = 0, LeptonNumber = 1, Y = 0)
vt__tilde__ = anti(vt)
u = Particle(pdg_code = 2, name = "u", antiname = "u~", spin = 2, color = 3, mass = Parameters.ZERO, width = Parameters.ZERO, texname = "u", antitexname = "u~", charge = 2 / 3, GhostNumber = 0, LeptonNumber = 0, Y = 0)
u__tilde__ = anti(u)
c = Particle(pdg_code = 4, name = "c", antiname = "c~", spin = 2, color = 3, mass = Parameters.MC, width = Parameters.ZERO, texname = "c", antitexname = "c~", charge = 2 / 3, GhostNumber = 0, LeptonNumber = 0, Y = 0)
c__tilde__ = anti(c)
t = Particle(pdg_code = 6, name = "t", antiname = "t~", spin = 2, color = 3, mass = Parameters.MT, width = Parameters.WT, texname = "t", antitexname = "t~", charge = 2 / 3, GhostNumber = 0, LeptonNumber = 0, Y = 0)
t__tilde__ = anti(t)
d = Particle(pdg_code = 1, name = "d", antiname = "d~", spin = 2, color = 3, mass = Parameters.ZERO, width = Parameters.ZERO, texname = "d", antitexname = "d~", charge = -1 / 3, GhostNumber = 0, LeptonNumber = 0, Y = 0)
d__tilde__ = anti(d)
s = Particle(pdg_code = 3, name = "s", antiname = "s~", spin = 2, color = 3, mass = Parameters.ZERO, width = Parameters.ZERO, texname = "s", antitexname = "s~", charge = -1 / 3, GhostNumber = 0, LeptonNumber = 0, Y = 0)
s__tilde__ = anti(s)
b = Particle(pdg_code = 5, name = "b", antiname = "b~", spin = 2, color = 3, mass = Parameters.MB, width = Parameters.ZERO, texname = "b", antitexname = "b~", charge = -1 / 3, GhostNumber = 0, LeptonNumber = 0, Y = 0)
b__tilde__ = anti(b)
H = Particle(pdg_code = 25, name = "H", antiname = "H", spin = 1, color = 1, mass = Parameters.MH, width = Parameters.WH, texname = "H", antitexname = "H", charge = 0, GhostNumber = 0, LeptonNumber = 0, Y = 0)
G0 = Particle(pdg_code = 250, name = "G0", antiname = "G0", spin = 1, color = 1, mass = Parameters.MZ, width = Parameters.WZ, texname = "G0", antitexname = "G0", GoldstoneBoson = true, charge = 0, GhostNumber = 0, LeptonNumber = 0, Y = 0)
G__plus__ = Particle(pdg_code = 251, name = "G+", antiname = "G-", spin = 1, color = 1, mass = Parameters.MW, width = Parameters.WW, texname = "G+", antitexname = "G-", GoldstoneBoson = true, charge = 1, GhostNumber = 0, LeptonNumber = 0, Y = 0)
G__minus__ = anti(G__plus__)
e__minus__ = Particle(pdg_code = 11, name = "e-", antiname = "e+", spin = 2, color = 1, mass = Parameters.Me, width = Parameters.ZERO, texname = "e-", antitexname = "e+", charge = -1, GhostNumber = 0, LeptonNumber = 1, Y = 0)
e__plus__ = anti(e__minus__)
mu__minus__ = Particle(pdg_code = 13, name = "mu-", antiname = "mu+", spin = 2, color = 1, mass = Parameters.MM, width = Parameters.ZERO, texname = "mu-", antitexname = "mu+", charge = -1, GhostNumber = 0, LeptonNumber = 1, Y = 0)
mu__plus__ = anti(mu__minus__)
ta__minus__ = Particle(pdg_code = 15, name = "ta-", antiname = "ta+", spin = 2, color = 1, mass = Parameters.MTA, width = Parameters.WTau, texname = "ta-", antitexname = "ta+", charge = -1, GhostNumber = 0, LeptonNumber = 1, Y = 0)
ta__plus__ = anti(ta__minus__)

all_particles = (
    a = a,
    Z = Z,
    W__plus__ = W__plus__,
    W__minus__ = W__minus__,
    g = g,
    ghA = ghA,
    ghA__tilde__ = ghA__tilde__,
    ghZ = ghZ,
    ghZ__tilde__ = ghZ__tilde__,
    ghWp = ghWp,
    ghWp__tilde__ = ghWp__tilde__,
    ghWm = ghWm,
    ghWm__tilde__ = ghWm__tilde__,
    ghG = ghG,
    ghG__tilde__ = ghG__tilde__,
    ve = ve,
    ve__tilde__ = ve__tilde__,
    vm = vm,
    vm__tilde__ = vm__tilde__,
    vt = vt,
    vt__tilde__ = vt__tilde__,
    u = u,
    u__tilde__ = u__tilde__,
    c = c,
    c__tilde__ = c__tilde__,
    t = t,
    t__tilde__ = t__tilde__,
    d = d,
    d__tilde__ = d__tilde__,
    s = s,
    s__tilde__ = s__tilde__,
    b = b,
    b__tilde__ = b__tilde__,
    H = H,
    G0 = G0,
    G__plus__ = G__plus__,
    G__minus__ = G__minus__,
    e__minus__ = e__minus__,
    e__plus__ = e__plus__,
    mu__minus__ = mu__minus__,
    mu__plus__ = mu__plus__,
    ta__minus__ = ta__minus__,
    ta__plus__ = ta__plus__
)

end # Particles