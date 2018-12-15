plot(CO2$conc,CO2$uptake,pch = 20)
plot(CO2$conc,CO2$uptake,pch=20,col = CO2$Treatment)

#Adicionando legenda
legend("bottomright",legend=c("nonchilled","chilled"),cex=1, fill=c("black","blue")) 
plot(trees)
