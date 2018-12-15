dados<-read.csv(file.choose(),sep=",",header = T)
head(dados)
dim(dados)
amostra<-sample(2,1000,replace = T,prob = c(0.7,0.3))
amostra

dadostreino<-dados[amostra == 1,]
dadosteste<-dados[amostra == 2,]
dim(dadostreino)
dim(dadosteste)

modelo<-naiveBayes(class~.,dadostreino)
predicao<-predict(modelo,dadosteste)
predicao

matrix<-table(dadosteste$class,predicao)
taxaacerto<-(matrix[1] + matrix[4]) / sum(matrix)
taxaerro<-(matrix[2] + matrix[3]) / sum(matrix)
