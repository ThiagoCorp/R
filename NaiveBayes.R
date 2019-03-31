
library(e1071)

dataframe<-read.csv(file.choose(),sep=',',header=T)

# Removendo dados duplicados
unique(dataframe)
head(dataframe)
dim(dataframe)

amostra<-sample(2,1000,replace=T, prob=c(0.7,0.3))
amostra

treinodados<-dataframe[amostra == 1,]
treinoteste<-dataframe[amostra == 2,]

dim(treinodados)
dim(treinoteste)

# Treinando o modelo

modelo<-naiveBayes(class ~., treinoteste)
predicao<-predict(modelo,treinoteste)
predicao
matriz<-table(treinoteste$class,predicao)
taxaacerto = (matriz[1] + matriz[4]) / sum(matriz)
taxaerro = (matriz[2] + matriz[3]) / sum(matriz)
