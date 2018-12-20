install.packages("neuralnet")
library(neuralnet)

dados<-iris
dados<-cbind(dados,dados$Species == "setosa")
dados<-cbind(dados,dados$Species == "versicolor")
dados<-cbind(dados,dados$Species == "virginica")

names(dados)[6]<-'setosa'
names(dados)[7]<-'versicolor'
names(dados)[8]<-'virginica'
summary(dados)

install.packages("caret", dependencies = c("Depends", "Suggests"))
library(caret)
# Partição
particao <-createDataPartition(1:dim(dados)[1],p=.7)
iristreino <- dados[particao$Resample1,]
iristeste <- dados[- particao$Resample1,]
dim(iristreino)
dim(iristeste)

modelo<-neuralnet(setosa + versicolor + virginica ~Sepal.Length + Sepal.Width +  Petal.Length + Petal.Width , iristreino, hidden=c(5,4))
plot(modelo)
teste<-compute(modelo,iristeste[,1:4])
teste$net.result
resultado<-as.data.frame(teste$net.result)

names(dados)[1]<-'setosa'
names(dados)[2]<-'versicolor'
names(dados)[3]<-'virginica'
resultado$class = colnames(resultado[,1:3])[max.col(resultado[,1:3], ties.method = 'first')]

confusao<-table(resultado$class,iristeste$Species)
confusao

sum(diag(confusao) * 100 / sum(confusao))
