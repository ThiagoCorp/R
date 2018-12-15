densidade<-density(trees$Height)
plot(densidade)

#Histograma e grafico de densidade utilizados juntos
hist(trees$Height,main = NULL,xlab=NULL)
par(new=TRUE)
plot(densidade)