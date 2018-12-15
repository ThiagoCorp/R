spray<-aggregate(.~spray,data=InsectSprays,sum)
spray

# Construção do grafico em barra

barplot(spray$count,col = grey.colors(7),xlab="Splay",ylab = "Total",names.arg = spray$spray)
box()
