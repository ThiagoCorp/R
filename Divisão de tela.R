split.screen(figs=c(2,2))
screen(1)
plot(trees$Girth,trees$Volume)


#Circufência e altura
screen(2)
plot(trees$Girth,trees$Height)

#Altura e volume

screen(3)
plot(trees$Height,trees$Volume)

# Circunferência e altura

screen(4)
plot(trees$Girth,trees$Height)




