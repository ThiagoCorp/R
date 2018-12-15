
histogram(trees$Volume,main="Arvore",xlab="Volume",aspect=2,type="count",nint=10)
aggregate(chickwts$weight,by=list(chickwts$feed),FUN=sum)
histogram(~weight | feed,data=chickwts)

