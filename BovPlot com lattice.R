# O pacote lattice do R é uma ferramenta bastante útil para
# preparar painéis com gráficos de forma automatizada. Essa ferramenta,
# combinada com a leitura automática de arquivos de dados, 
# torna a repetitiva visualização de dados e preparação de gráficos muito eficiente. 


install.packages("lattice")
library(lattice)

# Grafico bocplot com lattice


bwplot(trees$Volume,main="Arvore",xlab="Volume")
bwplot(trees$Volume)
