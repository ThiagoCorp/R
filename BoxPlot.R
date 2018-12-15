boxplot(trees$Volume,main="Arvores",xlab="volume",ylab="Frequencia")

# BoxPlot  na horizontal


boxplot(trees$Volume, main= "Árvores", xlab = "Volume",ylab="Frequencia", col="blue", horizontal=TRUE )

boxplot(trees$Volume, main= "Árvores", xlab = "Volume",ylab="Frequencia", col="blue", outline = F )

boxplot(trees$Volume, main= "Árvores", xlab = "Volume",ylab="Frequencia", col="blue", notch = TRUE )

boxplot(trees)