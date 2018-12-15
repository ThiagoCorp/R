plot(trees$Girth,trees$Volume)

#Grafico de dispersão com legenda
plot(trees$Girth,trees$Volume,main="Arvores")

#Grafico de dispersão com lengenda e nome do eixos x,y. 
plot(trees$Girth,trees$Volume,ylab = "Circunferencia",xlab="Volume",col="blue",main = "Arvore")

plot(trees$Girth,trees$Volume,ylab = "Circunferencia",xlab="Volume",col="blue",main = "Arvore",pch=20)


plot(jitter(trees$Girth), trees$Volume, ylab="Cirunferência", xlab="Volume", col="blue", main="Árvores")

