pie(spray$count,label=spray$spray,main = "Spray",col = c(1:6))

# Grafico de Setores sem labels
pie(spray$count,labels = NA,main = "Spray",col = c(1:6))

egend("bottomright",legend=spray$spray ,cex=1, fill=c(1:6))
