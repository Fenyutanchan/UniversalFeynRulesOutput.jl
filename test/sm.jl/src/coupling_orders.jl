module  CouplingOrders

using   ..Objects

export  all_coupling_orders

QCD = CouplingOrder(name = "QCD", expansion_order = 99, hierarchy = 1)
QED = CouplingOrder(name = "QED", expansion_order = 99, hierarchy = 2)

all_coupling_orders = (
    QCD = QCD,
    QED = QED
)

end # CouplingOrders