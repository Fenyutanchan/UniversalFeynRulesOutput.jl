module  Vertices

using   ..Objects

export  all_vertices

import  ..Particles
import  ..Couplings
import  ..LorentzIndices


V_1 = Vertex(name = "V_1", particles = [Particles.G0, Particles.G0, Particles.G0, Particles.G0], color = ["1"], lorentz = [LorentzIndices.SSSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_33))
V_2 = Vertex(name = "V_2", particles = [Particles.G0, Particles.G0, Particles.G__minus__, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.SSSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_31))
V_3 = Vertex(name = "V_3", particles = [Particles.G__minus__, Particles.G__minus__, Particles.G__plus__, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.SSSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_32))
V_4 = Vertex(name = "V_4", particles = [Particles.G0, Particles.G0, Particles.H, Particles.H], color = ["1"], lorentz = [LorentzIndices.SSSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_31))
V_5 = Vertex(name = "V_5", particles = [Particles.G__minus__, Particles.G__plus__, Particles.H, Particles.H], color = ["1"], lorentz = [LorentzIndices.SSSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_31))
V_6 = Vertex(name = "V_6", particles = [Particles.H, Particles.H, Particles.H, Particles.H], color = ["1"], lorentz = [LorentzIndices.SSSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_33))
V_7 = Vertex(name = "V_7", particles = [Particles.G0, Particles.G0, Particles.H], color = ["1"], lorentz = [LorentzIndices.SSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_68))
V_8 = Vertex(name = "V_8", particles = [Particles.G__minus__, Particles.G__plus__, Particles.H], color = ["1"], lorentz = [LorentzIndices.SSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_68))
V_9 = Vertex(name = "V_9", particles = [Particles.H, Particles.H, Particles.H], color = ["1"], lorentz = [LorentzIndices.SSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_69))
V_10 = Vertex(name = "V_10", particles = [Particles.a, Particles.a, Particles.G__minus__, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_6))
V_11 = Vertex(name = "V_11", particles = [Particles.a, Particles.G__minus__, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.VSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_3))
V_12 = Vertex(name = "V_12", particles = [Particles.ghA, Particles.ghWm__tilde__, Particles.W__minus__], color = ["1"], lorentz = [LorentzIndices.UUV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_3))
V_13 = Vertex(name = "V_13", particles = [Particles.ghA, Particles.ghWp__tilde__, Particles.W__plus__], color = ["1"], lorentz = [LorentzIndices.UUV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_4))
V_14 = Vertex(name = "V_14", particles = [Particles.ghWm, Particles.ghA__tilde__, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.UUS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_75))
V_15 = Vertex(name = "V_15", particles = [Particles.ghWm, Particles.ghA__tilde__, Particles.W__plus__], color = ["1"], lorentz = [LorentzIndices.UUV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_3))
V_16 = Vertex(name = "V_16", particles = [Particles.ghWm, Particles.ghWm__tilde__, Particles.G0], color = ["1"], lorentz = [LorentzIndices.UUS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_70))
V_17 = Vertex(name = "V_17", particles = [Particles.ghWm, Particles.ghWm__tilde__, Particles.H], color = ["1"], lorentz = [LorentzIndices.UUS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_71))
V_18 = Vertex(name = "V_18", particles = [Particles.ghWm, Particles.ghWm__tilde__, Particles.a], color = ["1"], lorentz = [LorentzIndices.UUV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_4))
V_19 = Vertex(name = "V_19", particles = [Particles.ghWm, Particles.ghWm__tilde__, Particles.Z], color = ["1"], lorentz = [LorentzIndices.UUV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_53))
V_20 = Vertex(name = "V_20", particles = [Particles.ghWm, Particles.ghZ__tilde__, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.UUS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_78))
V_21 = Vertex(name = "V_21", particles = [Particles.ghWm, Particles.ghZ__tilde__, Particles.W__plus__], color = ["1"], lorentz = [LorentzIndices.UUV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_52))
V_22 = Vertex(name = "V_22", particles = [Particles.ghWp, Particles.ghA__tilde__, Particles.G__minus__], color = ["1"], lorentz = [LorentzIndices.UUS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_74))
V_23 = Vertex(name = "V_23", particles = [Particles.ghWp, Particles.ghA__tilde__, Particles.W__minus__], color = ["1"], lorentz = [LorentzIndices.UUV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_4))
V_24 = Vertex(name = "V_24", particles = [Particles.ghWp, Particles.ghWp__tilde__, Particles.G0], color = ["1"], lorentz = [LorentzIndices.UUS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_73))
V_25 = Vertex(name = "V_25", particles = [Particles.ghWp, Particles.ghWp__tilde__, Particles.H], color = ["1"], lorentz = [LorentzIndices.UUS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_71))
V_26 = Vertex(name = "V_26", particles = [Particles.ghWp, Particles.ghWp__tilde__, Particles.a], color = ["1"], lorentz = [LorentzIndices.UUV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_3))
V_27 = Vertex(name = "V_27", particles = [Particles.ghWp, Particles.ghWp__tilde__, Particles.Z], color = ["1"], lorentz = [LorentzIndices.UUV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_52))
V_28 = Vertex(name = "V_28", particles = [Particles.ghWp, Particles.ghZ__tilde__, Particles.G__minus__], color = ["1"], lorentz = [LorentzIndices.UUS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_77))
V_29 = Vertex(name = "V_29", particles = [Particles.ghWp, Particles.ghZ__tilde__, Particles.W__minus__], color = ["1"], lorentz = [LorentzIndices.UUV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_53))
V_30 = Vertex(name = "V_30", particles = [Particles.ghZ, Particles.ghWm__tilde__, Particles.G__minus__], color = ["1"], lorentz = [LorentzIndices.UUS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_79))
V_31 = Vertex(name = "V_31", particles = [Particles.ghZ, Particles.ghWm__tilde__, Particles.W__minus__], color = ["1"], lorentz = [LorentzIndices.UUV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_52))
V_32 = Vertex(name = "V_32", particles = [Particles.ghZ, Particles.ghWp__tilde__, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.UUS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_76))
V_33 = Vertex(name = "V_33", particles = [Particles.ghZ, Particles.ghWp__tilde__, Particles.W__plus__], color = ["1"], lorentz = [LorentzIndices.UUV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_53))
V_34 = Vertex(name = "V_34", particles = [Particles.ghZ, Particles.ghZ__tilde__, Particles.H], color = ["1"], lorentz = [LorentzIndices.UUS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_80))
V_35 = Vertex(name = "V_35", particles = [Particles.ghG, Particles.ghG__tilde__, Particles.g], color = ["f(1,2,3)"], lorentz = [LorentzIndices.UUV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_10))
V_36 = Vertex(name = "V_36", particles = [Particles.g, Particles.g, Particles.g], color = ["f(1,2,3)"], lorentz = [LorentzIndices.VVV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_10))
V_37 = Vertex(name = "V_37", particles = [Particles.g, Particles.g, Particles.g, Particles.g], color = ["f(-1,1,2)*f(3,4,-1)", "f(-1,1,3)*f(2,4,-1)", "f(-1,1,4)*f(2,3,-1)"], lorentz = [LorentzIndices.VVVV1, LorentzIndices.VVVV3, LorentzIndices.VVVV4], couplings = Dict{Tuple{Int, Int}, Coupling}((1, 1) => Couplings.GC_12, (0, 0) => Couplings.GC_12, (2, 2) => Couplings.GC_12))
V_38 = Vertex(name = "V_38", particles = [Particles.a, Particles.W__minus__, Particles.G0, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_55))
V_39 = Vertex(name = "V_39", particles = [Particles.a, Particles.W__minus__, Particles.G__plus__, Particles.H], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_54))
V_40 = Vertex(name = "V_40", particles = [Particles.a, Particles.W__minus__, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.VVS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_74))
V_41 = Vertex(name = "V_41", particles = [Particles.W__minus__, Particles.G0, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.VSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_39))
V_42 = Vertex(name = "V_42", particles = [Particles.W__minus__, Particles.G__plus__, Particles.H], color = ["1"], lorentz = [LorentzIndices.VSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_37))
V_43 = Vertex(name = "V_43", particles = [Particles.a, Particles.W__minus__, Particles.W__plus__], color = ["1"], lorentz = [LorentzIndices.VVV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_4))
V_44 = Vertex(name = "V_44", particles = [Particles.a, Particles.W__plus__, Particles.G0, Particles.G__minus__], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_55))
V_45 = Vertex(name = "V_45", particles = [Particles.a, Particles.W__plus__, Particles.G__minus__, Particles.H], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_56))
V_46 = Vertex(name = "V_46", particles = [Particles.a, Particles.W__plus__, Particles.G__minus__], color = ["1"], lorentz = [LorentzIndices.VVS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_75))
V_47 = Vertex(name = "V_47", particles = [Particles.W__plus__, Particles.G0, Particles.G__minus__], color = ["1"], lorentz = [LorentzIndices.VSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_38))
V_48 = Vertex(name = "V_48", particles = [Particles.W__plus__, Particles.G__minus__, Particles.H], color = ["1"], lorentz = [LorentzIndices.VSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_37))
V_49 = Vertex(name = "V_49", particles = [Particles.W__minus__, Particles.W__plus__, Particles.G0, Particles.G0], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_34))
V_50 = Vertex(name = "V_50", particles = [Particles.W__minus__, Particles.W__plus__, Particles.G__minus__, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_34))
V_51 = Vertex(name = "V_51", particles = [Particles.W__minus__, Particles.W__plus__, Particles.H, Particles.H], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_34))
V_52 = Vertex(name = "V_52", particles = [Particles.W__minus__, Particles.W__plus__, Particles.H], color = ["1"], lorentz = [LorentzIndices.VVS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_72))
V_53 = Vertex(name = "V_53", particles = [Particles.a, Particles.a, Particles.W__minus__, Particles.W__plus__], color = ["1"], lorentz = [LorentzIndices.VVVV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_5))
V_54 = Vertex(name = "V_54", particles = [Particles.W__minus__, Particles.W__plus__, Particles.Z], color = ["1"], lorentz = [LorentzIndices.VVV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_53))
V_55 = Vertex(name = "V_55", particles = [Particles.W__minus__, Particles.W__minus__, Particles.W__plus__, Particles.W__plus__], color = ["1"], lorentz = [LorentzIndices.VVVV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_35))
V_56 = Vertex(name = "V_56", particles = [Particles.a, Particles.Z, Particles.G__minus__, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_63))
V_57 = Vertex(name = "V_57", particles = [Particles.Z, Particles.G0, Particles.H], color = ["1"], lorentz = [LorentzIndices.VSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_60))
V_58 = Vertex(name = "V_58", particles = [Particles.Z, Particles.G__minus__, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.VSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_61))
V_59 = Vertex(name = "V_59", particles = [Particles.W__minus__, Particles.Z, Particles.G0, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_8))
V_60 = Vertex(name = "V_60", particles = [Particles.W__minus__, Particles.Z, Particles.G__plus__, Particles.H], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_9))
V_61 = Vertex(name = "V_61", particles = [Particles.W__minus__, Particles.Z, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.VVS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_67))
V_62 = Vertex(name = "V_62", particles = [Particles.W__plus__, Particles.Z, Particles.G0, Particles.G__minus__], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_8))
V_63 = Vertex(name = "V_63", particles = [Particles.W__plus__, Particles.Z, Particles.G__minus__, Particles.H], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_7))
V_64 = Vertex(name = "V_64", particles = [Particles.W__plus__, Particles.Z, Particles.G__minus__], color = ["1"], lorentz = [LorentzIndices.VVS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_66))
V_65 = Vertex(name = "V_65", particles = [Particles.a, Particles.W__minus__, Particles.W__plus__, Particles.Z], color = ["1"], lorentz = [LorentzIndices.VVVV5], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_57))
V_66 = Vertex(name = "V_66", particles = [Particles.Z, Particles.Z, Particles.G0, Particles.G0], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_65))
V_67 = Vertex(name = "V_67", particles = [Particles.Z, Particles.Z, Particles.G__minus__, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_64))
V_68 = Vertex(name = "V_68", particles = [Particles.Z, Particles.Z, Particles.H, Particles.H], color = ["1"], lorentz = [LorentzIndices.VVSS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_65))
V_69 = Vertex(name = "V_69", particles = [Particles.Z, Particles.Z, Particles.H], color = ["1"], lorentz = [LorentzIndices.VVS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_81))
V_70 = Vertex(name = "V_70", particles = [Particles.W__minus__, Particles.W__plus__, Particles.Z, Particles.Z], color = ["1"], lorentz = [LorentzIndices.VVVV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_36))
V_71 = Vertex(name = "V_71", particles = [Particles.d__tilde__, Particles.d, Particles.a], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_1))
V_72 = Vertex(name = "V_72", particles = [Particles.s__tilde__, Particles.s, Particles.a], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_1))
V_73 = Vertex(name = "V_73", particles = [Particles.b__tilde__, Particles.b, Particles.a], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_1))
V_74 = Vertex(name = "V_74", particles = [Particles.d__tilde__, Particles.d, Particles.g], color = ["T(3,2,1)"], lorentz = [LorentzIndices.FFV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_11))
V_75 = Vertex(name = "V_75", particles = [Particles.s__tilde__, Particles.s, Particles.g], color = ["T(3,2,1)"], lorentz = [LorentzIndices.FFV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_11))
V_76 = Vertex(name = "V_76", particles = [Particles.b__tilde__, Particles.b, Particles.g], color = ["T(3,2,1)"], lorentz = [LorentzIndices.FFV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_11))
V_77 = Vertex(name = "V_77", particles = [Particles.b__tilde__, Particles.b, Particles.G0], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_82))
V_78 = Vertex(name = "V_78", particles = [Particles.b__tilde__, Particles.b, Particles.H], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS4], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_83))
V_79 = Vertex(name = "V_79", particles = [Particles.d__tilde__, Particles.d, Particles.Z], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2, LorentzIndices.FFV3], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_50, (0, 1) => Couplings.GC_58))
V_80 = Vertex(name = "V_80", particles = [Particles.s__tilde__, Particles.s, Particles.Z], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2, LorentzIndices.FFV3], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_50, (0, 1) => Couplings.GC_58))
V_81 = Vertex(name = "V_81", particles = [Particles.b__tilde__, Particles.b, Particles.Z], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2, LorentzIndices.FFV3], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 1) => Couplings.GC_58, (0, 0) => Couplings.GC_50))
V_82 = Vertex(name = "V_82", particles = [Particles.c__tilde__, Particles.d, Particles.G__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS3], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_16))
V_83 = Vertex(name = "V_83", particles = [Particles.t__tilde__, Particles.d, Particles.G__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS3], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_17))
V_84 = Vertex(name = "V_84", particles = [Particles.c__tilde__, Particles.s, Particles.G__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS3], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_18))
V_85 = Vertex(name = "V_85", particles = [Particles.t__tilde__, Particles.s, Particles.G__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS3], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_19))
V_86 = Vertex(name = "V_86", particles = [Particles.u__tilde__, Particles.b, Particles.G__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_13))
V_87 = Vertex(name = "V_87", particles = [Particles.c__tilde__, Particles.b, Particles.G__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS1, LorentzIndices.FFS3], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_14, (0, 1) => Couplings.GC_20))
V_88 = Vertex(name = "V_88", particles = [Particles.t__tilde__, Particles.b, Particles.G__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS1, LorentzIndices.FFS3], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_15, (0, 1) => Couplings.GC_21))
V_89 = Vertex(name = "V_89", particles = [Particles.u__tilde__, Particles.d, Particles.W__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_100))
V_90 = Vertex(name = "V_90", particles = [Particles.c__tilde__, Particles.d, Particles.W__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_103))
V_91 = Vertex(name = "V_91", particles = [Particles.t__tilde__, Particles.d, Particles.W__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_106))
V_92 = Vertex(name = "V_92", particles = [Particles.u__tilde__, Particles.s, Particles.W__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_101))
V_93 = Vertex(name = "V_93", particles = [Particles.c__tilde__, Particles.s, Particles.W__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_104))
V_94 = Vertex(name = "V_94", particles = [Particles.t__tilde__, Particles.s, Particles.W__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_107))
V_95 = Vertex(name = "V_95", particles = [Particles.u__tilde__, Particles.b, Particles.W__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_102))
V_96 = Vertex(name = "V_96", particles = [Particles.c__tilde__, Particles.b, Particles.W__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_105))
V_97 = Vertex(name = "V_97", particles = [Particles.t__tilde__, Particles.b, Particles.W__plus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_108))
V_98 = Vertex(name = "V_98", particles = [Particles.e__plus__, Particles.e__minus__, Particles.a], color = ["1"], lorentz = [LorentzIndices.FFV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_3))
V_99 = Vertex(name = "V_99", particles = [Particles.mu__plus__, Particles.mu__minus__, Particles.a], color = ["1"], lorentz = [LorentzIndices.FFV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_3))
V_100 = Vertex(name = "V_100", particles = [Particles.ta__plus__, Particles.ta__minus__, Particles.a], color = ["1"], lorentz = [LorentzIndices.FFV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_3))
V_101 = Vertex(name = "V_101", particles = [Particles.e__plus__, Particles.e__minus__, Particles.G0], color = ["1"], lorentz = [LorentzIndices.FFS2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_88))
V_102 = Vertex(name = "V_102", particles = [Particles.mu__plus__, Particles.mu__minus__, Particles.G0], color = ["1"], lorentz = [LorentzIndices.FFS2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_92))
V_103 = Vertex(name = "V_103", particles = [Particles.ta__plus__, Particles.ta__minus__, Particles.G0], color = ["1"], lorentz = [LorentzIndices.FFS2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_98))
V_104 = Vertex(name = "V_104", particles = [Particles.e__plus__, Particles.e__minus__, Particles.H], color = ["1"], lorentz = [LorentzIndices.FFS4], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_89))
V_105 = Vertex(name = "V_105", particles = [Particles.mu__plus__, Particles.mu__minus__, Particles.H], color = ["1"], lorentz = [LorentzIndices.FFS4], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_93))
V_106 = Vertex(name = "V_106", particles = [Particles.ta__plus__, Particles.ta__minus__, Particles.H], color = ["1"], lorentz = [LorentzIndices.FFS4], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_99))
V_107 = Vertex(name = "V_107", particles = [Particles.e__plus__, Particles.e__minus__, Particles.Z], color = ["1"], lorentz = [LorentzIndices.FFV2, LorentzIndices.FFV4], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_50, (0, 1) => Couplings.GC_59))
V_108 = Vertex(name = "V_108", particles = [Particles.mu__plus__, Particles.mu__minus__, Particles.Z], color = ["1"], lorentz = [LorentzIndices.FFV2, LorentzIndices.FFV4], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_50, (0, 1) => Couplings.GC_59))
V_109 = Vertex(name = "V_109", particles = [Particles.ta__plus__, Particles.ta__minus__, Particles.Z], color = ["1"], lorentz = [LorentzIndices.FFV2, LorentzIndices.FFV4], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_50, (0, 1) => Couplings.GC_59))
V_110 = Vertex(name = "V_110", particles = [Particles.ve__tilde__, Particles.e__minus__, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.FFS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_87))
V_111 = Vertex(name = "V_111", particles = [Particles.vm__tilde__, Particles.mu__minus__, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.FFS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_91))
V_112 = Vertex(name = "V_112", particles = [Particles.vt__tilde__, Particles.ta__minus__, Particles.G__plus__], color = ["1"], lorentz = [LorentzIndices.FFS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_97))
V_113 = Vertex(name = "V_113", particles = [Particles.ve__tilde__, Particles.e__minus__, Particles.W__plus__], color = ["1"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_40))
V_114 = Vertex(name = "V_114", particles = [Particles.vm__tilde__, Particles.mu__minus__, Particles.W__plus__], color = ["1"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_40))
V_115 = Vertex(name = "V_115", particles = [Particles.vt__tilde__, Particles.ta__minus__, Particles.W__plus__], color = ["1"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_40))
V_116 = Vertex(name = "V_116", particles = [Particles.b__tilde__, Particles.u, Particles.G__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS3], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_28))
V_117 = Vertex(name = "V_117", particles = [Particles.d__tilde__, Particles.c, Particles.G__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_22))
V_118 = Vertex(name = "V_118", particles = [Particles.s__tilde__, Particles.c, Particles.G__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_23))
V_119 = Vertex(name = "V_119", particles = [Particles.b__tilde__, Particles.c, Particles.G__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS1, LorentzIndices.FFS3], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_24, (0, 1) => Couplings.GC_29))
V_120 = Vertex(name = "V_120", particles = [Particles.d__tilde__, Particles.t, Particles.G__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_25))
V_121 = Vertex(name = "V_121", particles = [Particles.s__tilde__, Particles.t, Particles.G__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_26))
V_122 = Vertex(name = "V_122", particles = [Particles.b__tilde__, Particles.t, Particles.G__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS1, LorentzIndices.FFS3], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_27, (0, 1) => Couplings.GC_30))
V_123 = Vertex(name = "V_123", particles = [Particles.d__tilde__, Particles.u, Particles.W__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_41))
V_124 = Vertex(name = "V_124", particles = [Particles.s__tilde__, Particles.u, Particles.W__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_42))
V_125 = Vertex(name = "V_125", particles = [Particles.b__tilde__, Particles.u, Particles.W__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_43))
V_126 = Vertex(name = "V_126", particles = [Particles.d__tilde__, Particles.c, Particles.W__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_44))
V_127 = Vertex(name = "V_127", particles = [Particles.s__tilde__, Particles.c, Particles.W__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_45))
V_128 = Vertex(name = "V_128", particles = [Particles.b__tilde__, Particles.c, Particles.W__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_46))
V_129 = Vertex(name = "V_129", particles = [Particles.d__tilde__, Particles.t, Particles.W__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_47))
V_130 = Vertex(name = "V_130", particles = [Particles.s__tilde__, Particles.t, Particles.W__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_48))
V_131 = Vertex(name = "V_131", particles = [Particles.b__tilde__, Particles.t, Particles.W__minus__], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_49))
V_132 = Vertex(name = "V_132", particles = [Particles.u__tilde__, Particles.u, Particles.a], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_2))
V_133 = Vertex(name = "V_133", particles = [Particles.c__tilde__, Particles.c, Particles.a], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_2))
V_134 = Vertex(name = "V_134", particles = [Particles.t__tilde__, Particles.t, Particles.a], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_2))
V_135 = Vertex(name = "V_135", particles = [Particles.u__tilde__, Particles.u, Particles.g], color = ["T(3,2,1)"], lorentz = [LorentzIndices.FFV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_11))
V_136 = Vertex(name = "V_136", particles = [Particles.c__tilde__, Particles.c, Particles.g], color = ["T(3,2,1)"], lorentz = [LorentzIndices.FFV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_11))
V_137 = Vertex(name = "V_137", particles = [Particles.t__tilde__, Particles.t, Particles.g], color = ["T(3,2,1)"], lorentz = [LorentzIndices.FFV1], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_11))
V_138 = Vertex(name = "V_138", particles = [Particles.c__tilde__, Particles.c, Particles.G0], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_85))
V_139 = Vertex(name = "V_139", particles = [Particles.t__tilde__, Particles.t, Particles.G0], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_95))
V_140 = Vertex(name = "V_140", particles = [Particles.c__tilde__, Particles.c, Particles.H], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS4], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_84))
V_141 = Vertex(name = "V_141", particles = [Particles.t__tilde__, Particles.t, Particles.H], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFS4], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_94))
V_142 = Vertex(name = "V_142", particles = [Particles.u__tilde__, Particles.u, Particles.Z], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2, LorentzIndices.FFV5], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_51, (0, 1) => Couplings.GC_58))
V_143 = Vertex(name = "V_143", particles = [Particles.c__tilde__, Particles.c, Particles.Z], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2, LorentzIndices.FFV5], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_51, (0, 1) => Couplings.GC_58))
V_144 = Vertex(name = "V_144", particles = [Particles.t__tilde__, Particles.t, Particles.Z], color = ["Identity(1,2)"], lorentz = [LorentzIndices.FFV2, LorentzIndices.FFV5], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_51, (0, 1) => Couplings.GC_58))
V_145 = Vertex(name = "V_145", particles = [Particles.e__plus__, Particles.ve, Particles.G__minus__], color = ["1"], lorentz = [LorentzIndices.FFS3], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_86))
V_146 = Vertex(name = "V_146", particles = [Particles.mu__plus__, Particles.vm, Particles.G__minus__], color = ["1"], lorentz = [LorentzIndices.FFS3], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_90))
V_147 = Vertex(name = "V_147", particles = [Particles.ta__plus__, Particles.vt, Particles.G__minus__], color = ["1"], lorentz = [LorentzIndices.FFS3], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_96))
V_148 = Vertex(name = "V_148", particles = [Particles.e__plus__, Particles.ve, Particles.W__minus__], color = ["1"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_40))
V_149 = Vertex(name = "V_149", particles = [Particles.mu__plus__, Particles.vm, Particles.W__minus__], color = ["1"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_40))
V_150 = Vertex(name = "V_150", particles = [Particles.ta__plus__, Particles.vt, Particles.W__minus__], color = ["1"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_40))
V_151 = Vertex(name = "V_151", particles = [Particles.ve__tilde__, Particles.ve, Particles.Z], color = ["1"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_62))
V_152 = Vertex(name = "V_152", particles = [Particles.vm__tilde__, Particles.vm, Particles.Z], color = ["1"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_62))
V_153 = Vertex(name = "V_153", particles = [Particles.vt__tilde__, Particles.vt, Particles.Z], color = ["1"], lorentz = [LorentzIndices.FFV2], couplings = Dict{Tuple{Int, Int}, Coupling}((0, 0) => Couplings.GC_62))

all_vertices = (
    V_1 = V_1,
    V_2 = V_2,
    V_3 = V_3,
    V_4 = V_4,
    V_5 = V_5,
    V_6 = V_6,
    V_7 = V_7,
    V_8 = V_8,
    V_9 = V_9,
    V_10 = V_10,
    V_11 = V_11,
    V_12 = V_12,
    V_13 = V_13,
    V_14 = V_14,
    V_15 = V_15,
    V_16 = V_16,
    V_17 = V_17,
    V_18 = V_18,
    V_19 = V_19,
    V_20 = V_20,
    V_21 = V_21,
    V_22 = V_22,
    V_23 = V_23,
    V_24 = V_24,
    V_25 = V_25,
    V_26 = V_26,
    V_27 = V_27,
    V_28 = V_28,
    V_29 = V_29,
    V_30 = V_30,
    V_31 = V_31,
    V_32 = V_32,
    V_33 = V_33,
    V_34 = V_34,
    V_35 = V_35,
    V_36 = V_36,
    V_37 = V_37,
    V_38 = V_38,
    V_39 = V_39,
    V_40 = V_40,
    V_41 = V_41,
    V_42 = V_42,
    V_43 = V_43,
    V_44 = V_44,
    V_45 = V_45,
    V_46 = V_46,
    V_47 = V_47,
    V_48 = V_48,
    V_49 = V_49,
    V_50 = V_50,
    V_51 = V_51,
    V_52 = V_52,
    V_53 = V_53,
    V_54 = V_54,
    V_55 = V_55,
    V_56 = V_56,
    V_57 = V_57,
    V_58 = V_58,
    V_59 = V_59,
    V_60 = V_60,
    V_61 = V_61,
    V_62 = V_62,
    V_63 = V_63,
    V_64 = V_64,
    V_65 = V_65,
    V_66 = V_66,
    V_67 = V_67,
    V_68 = V_68,
    V_69 = V_69,
    V_70 = V_70,
    V_71 = V_71,
    V_72 = V_72,
    V_73 = V_73,
    V_74 = V_74,
    V_75 = V_75,
    V_76 = V_76,
    V_77 = V_77,
    V_78 = V_78,
    V_79 = V_79,
    V_80 = V_80,
    V_81 = V_81,
    V_82 = V_82,
    V_83 = V_83,
    V_84 = V_84,
    V_85 = V_85,
    V_86 = V_86,
    V_87 = V_87,
    V_88 = V_88,
    V_89 = V_89,
    V_90 = V_90,
    V_91 = V_91,
    V_92 = V_92,
    V_93 = V_93,
    V_94 = V_94,
    V_95 = V_95,
    V_96 = V_96,
    V_97 = V_97,
    V_98 = V_98,
    V_99 = V_99,
    V_100 = V_100,
    V_101 = V_101,
    V_102 = V_102,
    V_103 = V_103,
    V_104 = V_104,
    V_105 = V_105,
    V_106 = V_106,
    V_107 = V_107,
    V_108 = V_108,
    V_109 = V_109,
    V_110 = V_110,
    V_111 = V_111,
    V_112 = V_112,
    V_113 = V_113,
    V_114 = V_114,
    V_115 = V_115,
    V_116 = V_116,
    V_117 = V_117,
    V_118 = V_118,
    V_119 = V_119,
    V_120 = V_120,
    V_121 = V_121,
    V_122 = V_122,
    V_123 = V_123,
    V_124 = V_124,
    V_125 = V_125,
    V_126 = V_126,
    V_127 = V_127,
    V_128 = V_128,
    V_129 = V_129,
    V_130 = V_130,
    V_131 = V_131,
    V_132 = V_132,
    V_133 = V_133,
    V_134 = V_134,
    V_135 = V_135,
    V_136 = V_136,
    V_137 = V_137,
    V_138 = V_138,
    V_139 = V_139,
    V_140 = V_140,
    V_141 = V_141,
    V_142 = V_142,
    V_143 = V_143,
    V_144 = V_144,
    V_145 = V_145,
    V_146 = V_146,
    V_147 = V_147,
    V_148 = V_148,
    V_149 = V_149,
    V_150 = V_150,
    V_151 = V_151,
    V_152 = V_152,
    V_153 = V_153
)

end # Vertices