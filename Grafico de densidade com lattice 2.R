densityplot(~CO2$conc | CO2$Treatment, plot.points=FALSE)

densityplot(CO2$conc)
densityplot(~CO2$conc | CO2$Treatment)
densityplot(~CO2$conc | CO2$Treatment, plot.points=FALSE)




# Grafico 3D 
cloud(decrease ~  rowpos * colpos, data=OrchardSprays)

cloud(decrease ~  rowpos * colpos, groups=treatment, data=OrchardSprays)

levelplot(Girth ~Height * Volume, data=trees)
