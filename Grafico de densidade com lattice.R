xyplot(CO2$conc ~ CO2$uptake)
xyplot(CO2$conc ~  CO2$uptake | CO2$Type)
xyplot(CO2$conc ~  CO2$uptake | CO2$Treatment)

dotplot(esoph$alcgp ~ esoph$ncontrols, data=esoph)
dotplot(esoph$alcgp ~ esoph$ncontrols | esoph$tobgp)

splom(~CO2[4:5] | CO2$Type, CO2)
