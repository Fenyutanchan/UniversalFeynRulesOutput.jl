module  LorentzIndices

using   ..Objects

export  all_lorentz

import  ..FormFactors


UUS1 = Lorentz(name = "UUS1", spins = [-1, -1, 1], structure = "1")
UUV1 = Lorentz(name = "UUV1", spins = [-1, -1, 3], structure = "P(3,2) + P(3,3)")
SSS1 = Lorentz(name = "SSS1", spins = [1, 1, 1], structure = "1")
FFS1 = Lorentz(name = "FFS1", spins = [2, 2, 1], structure = "ProjM(2,1)")
FFS2 = Lorentz(name = "FFS2", spins = [2, 2, 1], structure = "ProjM(2,1) - ProjP(2,1)")
FFS3 = Lorentz(name = "FFS3", spins = [2, 2, 1], structure = "ProjP(2,1)")
FFS4 = Lorentz(name = "FFS4", spins = [2, 2, 1], structure = "ProjM(2,1) + ProjP(2,1)")
FFV1 = Lorentz(name = "FFV1", spins = [2, 2, 3], structure = "Gamma(3,2,1)")
FFV2 = Lorentz(name = "FFV2", spins = [2, 2, 3], structure = "Gamma(3,2,-1)*ProjM(-1,1)")
FFV3 = Lorentz(name = "FFV3", spins = [2, 2, 3], structure = "Gamma(3,2,-1)*ProjM(-1,1) - 2*Gamma(3,2,-1)*ProjP(-1,1)")
FFV4 = Lorentz(name = "FFV4", spins = [2, 2, 3], structure = "Gamma(3,2,-1)*ProjM(-1,1) + 2*Gamma(3,2,-1)*ProjP(-1,1)")
FFV5 = Lorentz(name = "FFV5", spins = [2, 2, 3], structure = "Gamma(3,2,-1)*ProjM(-1,1) + 4*Gamma(3,2,-1)*ProjP(-1,1)")
VSS1 = Lorentz(name = "VSS1", spins = [3, 1, 1], structure = "P(1,2) - P(1,3)")
VVS1 = Lorentz(name = "VVS1", spins = [3, 3, 1], structure = "Metric(1,2)")
VVV1 = Lorentz(name = "VVV1", spins = [3, 3, 3], structure = "P(3,1)*Metric(1,2) - P(3,2)*Metric(1,2) - P(2,1)*Metric(1,3) + P(2,3)*Metric(1,3) + P(1,2)*Metric(2,3) - P(1,3)*Metric(2,3)")
SSSS1 = Lorentz(name = "SSSS1", spins = [1, 1, 1, 1], structure = "1")
VVSS1 = Lorentz(name = "VVSS1", spins = [3, 3, 1, 1], structure = "Metric(1,2)")
VVVV1 = Lorentz(name = "VVVV1", spins = [3, 3, 3, 3], structure = "Metric(1,4)*Metric(2,3) - Metric(1,3)*Metric(2,4)")
VVVV2 = Lorentz(name = "VVVV2", spins = [3, 3, 3, 3], structure = "Metric(1,4)*Metric(2,3) + Metric(1,3)*Metric(2,4) - 2*Metric(1,2)*Metric(3,4)")
VVVV3 = Lorentz(name = "VVVV3", spins = [3, 3, 3, 3], structure = "Metric(1,4)*Metric(2,3) - Metric(1,2)*Metric(3,4)")
VVVV4 = Lorentz(name = "VVVV4", spins = [3, 3, 3, 3], structure = "Metric(1,3)*Metric(2,4) - Metric(1,2)*Metric(3,4)")
VVVV5 = Lorentz(name = "VVVV5", spins = [3, 3, 3, 3], structure = "Metric(1,4)*Metric(2,3) - (Metric(1,3)*Metric(2,4))/2. - (Metric(1,2)*Metric(3,4))/2.")

all_lorentz = (
    UUS1 = UUS1,
    UUV1 = UUV1,
    SSS1 = SSS1,
    FFS1 = FFS1,
    FFS2 = FFS2,
    FFS3 = FFS3,
    FFS4 = FFS4,
    FFV1 = FFV1,
    FFV2 = FFV2,
    FFV3 = FFV3,
    FFV4 = FFV4,
    FFV5 = FFV5,
    VSS1 = VSS1,
    VVS1 = VVS1,
    VVV1 = VVV1,
    SSSS1 = SSSS1,
    VVSS1 = VVSS1,
    VVVV1 = VVVV1,
    VVVV2 = VVVV2,
    VVVV3 = VVVV3,
    VVVV4 = VVVV4,
    VVVV5 = VVVV5
)

end # LorentzIndices