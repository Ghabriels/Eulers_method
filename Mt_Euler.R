

x<-seq(1,3,0.4)
F<-function(x,y) (1+(y/x)+(y/x)^2)
y=0
aprox.<-seq(0,0,0)
for(i in 1:5) {y=y+0.4*F(x[i],y); aprox.[i+1]<-y} 
f<-function(x) (tan(log(x, base=exp(1)))/x)
exata<-seq(0,0,0)
for(i in 1:6) {t=f(x[i]); exata[i]<-t}
erro.absoluto<-seq(0,0,0)
for(i in 1:6) {s=aprox.[i]-exata[i]; erro.absoluto[i]<-s}
comparacao<-cbind(x,aprox.,exata,erro.absoluto)
comparacao
mean(erro.absoluto)
plot(erro.absoluto, type = "b")
