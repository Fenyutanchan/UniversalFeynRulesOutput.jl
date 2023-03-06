module  Couplings

using   ..Objects

export  all_couplings

GC_1 = Coupling(name = "GC_1", value = "-(ee*complex(0,1))/3.", order = Dict{String, Int}("QED" => 1))
GC_2 = Coupling(name = "GC_2", value = "(2*ee*complex(0,1))/3.", order = Dict{String, Int}("QED" => 1))
GC_3 = Coupling(name = "GC_3", value = "-(ee*complex(0,1))", order = Dict{String, Int}("QED" => 1))
GC_4 = Coupling(name = "GC_4", value = "ee*complex(0,1)", order = Dict{String, Int}("QED" => 1))
GC_5 = Coupling(name = "GC_5", value = "ee^2*complex(0,1)", order = Dict{String, Int}("QED" => 2))
GC_6 = Coupling(name = "GC_6", value = "2*ee^2*complex(0,1)", order = Dict{String, Int}("QED" => 2))
GC_7 = Coupling(name = "GC_7", value = "-ee^2/(2. *cw)", order = Dict{String, Int}("QED" => 2))
GC_8 = Coupling(name = "GC_8", value = "(ee^2*complex(0,1))/(2. *cw)", order = Dict{String, Int}("QED" => 2))
GC_9 = Coupling(name = "GC_9", value = "ee^2/(2. *cw)", order = Dict{String, Int}("QED" => 2))
GC_10 = Coupling(name = "GC_10", value = "-G", order = Dict{String, Int}("QCD" => 1))
GC_11 = Coupling(name = "GC_11", value = "complex(0,1)*G", order = Dict{String, Int}("QCD" => 1))
GC_12 = Coupling(name = "GC_12", value = "complex(0,1)*G^2", order = Dict{String, Int}("QCD" => 2))
GC_13 = Coupling(name = "GC_13", value = "I1x31", order = Dict{String, Int}("QED" => 1))
GC_14 = Coupling(name = "GC_14", value = "I1x32", order = Dict{String, Int}("QED" => 1))
GC_15 = Coupling(name = "GC_15", value = "I1x33", order = Dict{String, Int}("QED" => 1))
GC_16 = Coupling(name = "GC_16", value = "-I2x12", order = Dict{String, Int}("QED" => 1))
GC_17 = Coupling(name = "GC_17", value = "-I2x13", order = Dict{String, Int}("QED" => 1))
GC_18 = Coupling(name = "GC_18", value = "-I2x22", order = Dict{String, Int}("QED" => 1))
GC_19 = Coupling(name = "GC_19", value = "-I2x23", order = Dict{String, Int}("QED" => 1))
GC_20 = Coupling(name = "GC_20", value = "-I2x32", order = Dict{String, Int}("QED" => 1))
GC_21 = Coupling(name = "GC_21", value = "-I2x33", order = Dict{String, Int}("QED" => 1))
GC_22 = Coupling(name = "GC_22", value = "I3x21", order = Dict{String, Int}("QED" => 1))
GC_23 = Coupling(name = "GC_23", value = "I3x22", order = Dict{String, Int}("QED" => 1))
GC_24 = Coupling(name = "GC_24", value = "I3x23", order = Dict{String, Int}("QED" => 1))
GC_25 = Coupling(name = "GC_25", value = "I3x31", order = Dict{String, Int}("QED" => 1))
GC_26 = Coupling(name = "GC_26", value = "I3x32", order = Dict{String, Int}("QED" => 1))
GC_27 = Coupling(name = "GC_27", value = "I3x33", order = Dict{String, Int}("QED" => 1))
GC_28 = Coupling(name = "GC_28", value = "-I4x13", order = Dict{String, Int}("QED" => 1))
GC_29 = Coupling(name = "GC_29", value = "-I4x23", order = Dict{String, Int}("QED" => 1))
GC_30 = Coupling(name = "GC_30", value = "-I4x33", order = Dict{String, Int}("QED" => 1))
GC_31 = Coupling(name = "GC_31", value = "-2*complex(0,1)*lam", order = Dict{String, Int}("QED" => 2))
GC_32 = Coupling(name = "GC_32", value = "-4*complex(0,1)*lam", order = Dict{String, Int}("QED" => 2))
GC_33 = Coupling(name = "GC_33", value = "-6*complex(0,1)*lam", order = Dict{String, Int}("QED" => 2))
GC_34 = Coupling(name = "GC_34", value = "(ee^2*complex(0,1))/(2. *sw^2)", order = Dict{String, Int}("QED" => 2))
GC_35 = Coupling(name = "GC_35", value = "-((ee^2*complex(0,1))/sw^2)", order = Dict{String, Int}("QED" => 2))
GC_36 = Coupling(name = "GC_36", value = "(cw^2*ee^2*complex(0,1))/sw^2", order = Dict{String, Int}("QED" => 2))
GC_37 = Coupling(name = "GC_37", value = "-ee/(2. *sw)", order = Dict{String, Int}("QED" => 1))
GC_38 = Coupling(name = "GC_38", value = "-(ee*complex(0,1))/(2. *sw)", order = Dict{String, Int}("QED" => 1))
GC_39 = Coupling(name = "GC_39", value = "(ee*complex(0,1))/(2. *sw)", order = Dict{String, Int}("QED" => 1))
GC_40 = Coupling(name = "GC_40", value = "(ee*complex(0,1))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_41 = Coupling(name = "GC_41", value = "(CKM1x1*ee*complex(0,1))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_42 = Coupling(name = "GC_42", value = "(CKM1x2*ee*complex(0,1))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_43 = Coupling(name = "GC_43", value = "(CKM1x3*ee*complex(0,1))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_44 = Coupling(name = "GC_44", value = "(CKM2x1*ee*complex(0,1))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_45 = Coupling(name = "GC_45", value = "(CKM2x2*ee*complex(0,1))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_46 = Coupling(name = "GC_46", value = "(CKM2x3*ee*complex(0,1))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_47 = Coupling(name = "GC_47", value = "(CKM3x1*ee*complex(0,1))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_48 = Coupling(name = "GC_48", value = "(CKM3x2*ee*complex(0,1))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_49 = Coupling(name = "GC_49", value = "(CKM3x3*ee*complex(0,1))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_50 = Coupling(name = "GC_50", value = "-(cw*ee*complex(0,1))/(2. *sw)", order = Dict{String, Int}("QED" => 1))
GC_51 = Coupling(name = "GC_51", value = "(cw*ee*complex(0,1))/(2. *sw)", order = Dict{String, Int}("QED" => 1))
GC_52 = Coupling(name = "GC_52", value = "-((cw*ee*complex(0,1))/sw)", order = Dict{String, Int}("QED" => 1))
GC_53 = Coupling(name = "GC_53", value = "(cw*ee*complex(0,1))/sw", order = Dict{String, Int}("QED" => 1))
GC_54 = Coupling(name = "GC_54", value = "-ee^2/(2. *sw)", order = Dict{String, Int}("QED" => 2))
GC_55 = Coupling(name = "GC_55", value = "-(ee^2*complex(0,1))/(2. *sw)", order = Dict{String, Int}("QED" => 2))
GC_56 = Coupling(name = "GC_56", value = "ee^2/(2. *sw)", order = Dict{String, Int}("QED" => 2))
GC_57 = Coupling(name = "GC_57", value = "(-2*cw*ee^2*complex(0,1))/sw", order = Dict{String, Int}("QED" => 2))
GC_58 = Coupling(name = "GC_58", value = "-(ee*complex(0,1)*sw)/(6. *cw)", order = Dict{String, Int}("QED" => 1))
GC_59 = Coupling(name = "GC_59", value = "(ee*complex(0,1)*sw)/(2. *cw)", order = Dict{String, Int}("QED" => 1))
GC_60 = Coupling(name = "GC_60", value = "-(cw*ee)/(2. *sw) - (ee*sw)/(2. *cw)", order = Dict{String, Int}("QED" => 1))
GC_61 = Coupling(name = "GC_61", value = "-(cw*ee*complex(0,1))/(2. *sw) + (ee*complex(0,1)*sw)/(2. *cw)", order = Dict{String, Int}("QED" => 1))
GC_62 = Coupling(name = "GC_62", value = "(cw*ee*complex(0,1))/(2. *sw) + (ee*complex(0,1)*sw)/(2. *cw)", order = Dict{String, Int}("QED" => 1))
GC_63 = Coupling(name = "GC_63", value = "(cw*ee^2*complex(0,1))/sw - (ee^2*complex(0,1)*sw)/cw", order = Dict{String, Int}("QED" => 2))
GC_64 = Coupling(name = "GC_64", value = "-(ee^2*complex(0,1)) + (cw^2*ee^2*complex(0,1))/(2. *sw^2) + (ee^2*complex(0,1)*sw^2)/(2. *cw^2)", order = Dict{String, Int}("QED" => 2))
GC_65 = Coupling(name = "GC_65", value = "ee^2*complex(0,1) + (cw^2*ee^2*complex(0,1))/(2. *sw^2) + (ee^2*complex(0,1)*sw^2)/(2. *cw^2)", order = Dict{String, Int}("QED" => 2))
GC_66 = Coupling(name = "GC_66", value = "-(ee^2*vev)/(2. *cw)", order = Dict{String, Int}("QED" => 1))
GC_67 = Coupling(name = "GC_67", value = "(ee^2*vev)/(2. *cw)", order = Dict{String, Int}("QED" => 1))
GC_68 = Coupling(name = "GC_68", value = "-2*complex(0,1)*lam*vev", order = Dict{String, Int}("QED" => 1))
GC_69 = Coupling(name = "GC_69", value = "-6*complex(0,1)*lam*vev", order = Dict{String, Int}("QED" => 1))
GC_70 = Coupling(name = "GC_70", value = "-(ee^2*vev)/(4. *sw^2)", order = Dict{String, Int}("QED" => 1))
GC_71 = Coupling(name = "GC_71", value = "-(ee^2*complex(0,1)*vev)/(4. *sw^2)", order = Dict{String, Int}("QED" => 1))
GC_72 = Coupling(name = "GC_72", value = "(ee^2*complex(0,1)*vev)/(2. *sw^2)", order = Dict{String, Int}("QED" => 1))
GC_73 = Coupling(name = "GC_73", value = "(ee^2*vev)/(4. *sw^2)", order = Dict{String, Int}("QED" => 1))
GC_74 = Coupling(name = "GC_74", value = "-(ee^2*vev)/(2. *sw)", order = Dict{String, Int}("QED" => 1))
GC_75 = Coupling(name = "GC_75", value = "(ee^2*vev)/(2. *sw)", order = Dict{String, Int}("QED" => 1))
GC_76 = Coupling(name = "GC_76", value = "-(ee^2*vev)/(4. *cw) - (cw*ee^2*vev)/(4. *sw^2)", order = Dict{String, Int}("QED" => 1))
GC_77 = Coupling(name = "GC_77", value = "(ee^2*vev)/(4. *cw) - (cw*ee^2*vev)/(4. *sw^2)", order = Dict{String, Int}("QED" => 1))
GC_78 = Coupling(name = "GC_78", value = "-(ee^2*vev)/(4. *cw) + (cw*ee^2*vev)/(4. *sw^2)", order = Dict{String, Int}("QED" => 1))
GC_79 = Coupling(name = "GC_79", value = "(ee^2*vev)/(4. *cw) + (cw*ee^2*vev)/(4. *sw^2)", order = Dict{String, Int}("QED" => 1))
GC_80 = Coupling(name = "GC_80", value = "-(ee^2*complex(0,1)*vev)/2. - (cw^2*ee^2*complex(0,1)*vev)/(4. *sw^2) - (ee^2*complex(0,1)*sw^2*vev)/(4. *cw^2)", order = Dict{String, Int}("QED" => 1))
GC_81 = Coupling(name = "GC_81", value = "ee^2*complex(0,1)*vev + (cw^2*ee^2*complex(0,1)*vev)/(2. *sw^2) + (ee^2*complex(0,1)*sw^2*vev)/(2. *cw^2)", order = Dict{String, Int}("QED" => 1))
GC_82 = Coupling(name = "GC_82", value = "-(yb/sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_83 = Coupling(name = "GC_83", value = "-((complex(0,1)*yb)/sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_84 = Coupling(name = "GC_84", value = "-((complex(0,1)*yc)/sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_85 = Coupling(name = "GC_85", value = "yc/sqrt(2)", order = Dict{String, Int}("QED" => 1))
GC_86 = Coupling(name = "GC_86", value = "-ye", order = Dict{String, Int}("QED" => 1))
GC_87 = Coupling(name = "GC_87", value = "ye", order = Dict{String, Int}("QED" => 1))
GC_88 = Coupling(name = "GC_88", value = "-(ye/sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_89 = Coupling(name = "GC_89", value = "-((complex(0,1)*ye)/sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_90 = Coupling(name = "GC_90", value = "-ym", order = Dict{String, Int}("QED" => 1))
GC_91 = Coupling(name = "GC_91", value = "ym", order = Dict{String, Int}("QED" => 1))
GC_92 = Coupling(name = "GC_92", value = "-(ym/sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_93 = Coupling(name = "GC_93", value = "-((complex(0,1)*ym)/sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_94 = Coupling(name = "GC_94", value = "-((complex(0,1)*yt)/sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_95 = Coupling(name = "GC_95", value = "yt/sqrt(2)", order = Dict{String, Int}("QED" => 1))
GC_96 = Coupling(name = "GC_96", value = "-ytau", order = Dict{String, Int}("QED" => 1))
GC_97 = Coupling(name = "GC_97", value = "ytau", order = Dict{String, Int}("QED" => 1))
GC_98 = Coupling(name = "GC_98", value = "-(ytau/sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_99 = Coupling(name = "GC_99", value = "-((complex(0,1)*ytau)/sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_100 = Coupling(name = "GC_100", value = "(ee*complex(0,1)*conj(CKM1x1))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_101 = Coupling(name = "GC_101", value = "(ee*complex(0,1)*conj(CKM1x2))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_102 = Coupling(name = "GC_102", value = "(ee*complex(0,1)*conj(CKM1x3))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_103 = Coupling(name = "GC_103", value = "(ee*complex(0,1)*conj(CKM2x1))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_104 = Coupling(name = "GC_104", value = "(ee*complex(0,1)*conj(CKM2x2))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_105 = Coupling(name = "GC_105", value = "(ee*complex(0,1)*conj(CKM2x3))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_106 = Coupling(name = "GC_106", value = "(ee*complex(0,1)*conj(CKM3x1))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_107 = Coupling(name = "GC_107", value = "(ee*complex(0,1)*conj(CKM3x2))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))
GC_108 = Coupling(name = "GC_108", value = "(ee*complex(0,1)*conj(CKM3x3))/(sw*sqrt(2))", order = Dict{String, Int}("QED" => 1))

all_couplings = (
    GC_1 = GC_1,
    GC_2 = GC_2,
    GC_3 = GC_3,
    GC_4 = GC_4,
    GC_5 = GC_5,
    GC_6 = GC_6,
    GC_7 = GC_7,
    GC_8 = GC_8,
    GC_9 = GC_9,
    GC_10 = GC_10,
    GC_11 = GC_11,
    GC_12 = GC_12,
    GC_13 = GC_13,
    GC_14 = GC_14,
    GC_15 = GC_15,
    GC_16 = GC_16,
    GC_17 = GC_17,
    GC_18 = GC_18,
    GC_19 = GC_19,
    GC_20 = GC_20,
    GC_21 = GC_21,
    GC_22 = GC_22,
    GC_23 = GC_23,
    GC_24 = GC_24,
    GC_25 = GC_25,
    GC_26 = GC_26,
    GC_27 = GC_27,
    GC_28 = GC_28,
    GC_29 = GC_29,
    GC_30 = GC_30,
    GC_31 = GC_31,
    GC_32 = GC_32,
    GC_33 = GC_33,
    GC_34 = GC_34,
    GC_35 = GC_35,
    GC_36 = GC_36,
    GC_37 = GC_37,
    GC_38 = GC_38,
    GC_39 = GC_39,
    GC_40 = GC_40,
    GC_41 = GC_41,
    GC_42 = GC_42,
    GC_43 = GC_43,
    GC_44 = GC_44,
    GC_45 = GC_45,
    GC_46 = GC_46,
    GC_47 = GC_47,
    GC_48 = GC_48,
    GC_49 = GC_49,
    GC_50 = GC_50,
    GC_51 = GC_51,
    GC_52 = GC_52,
    GC_53 = GC_53,
    GC_54 = GC_54,
    GC_55 = GC_55,
    GC_56 = GC_56,
    GC_57 = GC_57,
    GC_58 = GC_58,
    GC_59 = GC_59,
    GC_60 = GC_60,
    GC_61 = GC_61,
    GC_62 = GC_62,
    GC_63 = GC_63,
    GC_64 = GC_64,
    GC_65 = GC_65,
    GC_66 = GC_66,
    GC_67 = GC_67,
    GC_68 = GC_68,
    GC_69 = GC_69,
    GC_70 = GC_70,
    GC_71 = GC_71,
    GC_72 = GC_72,
    GC_73 = GC_73,
    GC_74 = GC_74,
    GC_75 = GC_75,
    GC_76 = GC_76,
    GC_77 = GC_77,
    GC_78 = GC_78,
    GC_79 = GC_79,
    GC_80 = GC_80,
    GC_81 = GC_81,
    GC_82 = GC_82,
    GC_83 = GC_83,
    GC_84 = GC_84,
    GC_85 = GC_85,
    GC_86 = GC_86,
    GC_87 = GC_87,
    GC_88 = GC_88,
    GC_89 = GC_89,
    GC_90 = GC_90,
    GC_91 = GC_91,
    GC_92 = GC_92,
    GC_93 = GC_93,
    GC_94 = GC_94,
    GC_95 = GC_95,
    GC_96 = GC_96,
    GC_97 = GC_97,
    GC_98 = GC_98,
    GC_99 = GC_99,
    GC_100 = GC_100,
    GC_101 = GC_101,
    GC_102 = GC_102,
    GC_103 = GC_103,
    GC_104 = GC_104,
    GC_105 = GC_105,
    GC_106 = GC_106,
    GC_107 = GC_107,
    GC_108 = GC_108
)

end # Couplings