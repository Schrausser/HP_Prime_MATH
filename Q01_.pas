//Q01_()/D.G.SCHRAUSSER/2025
//Statistical parameters 1.0
//[L1:Raw]
//L2:Distribution
//L3:z-value
//L4:z´-value
#cas
Q01_():=
BEGIN
//L1 provided
SORT(L1)▶L2 //distr
SIZE(L1)▶N
mean(L1)▶AM
stddev(L1)▶SD
stddevp(L1)▶SD1
variance(L1)▶VA
VA1=VA*(N/(N-1)) //SD1^2
SEM=sqrt((VA1/N))
VQ=SD/AM
QGM= N NTHROOT(product(L1))
QHM=N/Σ(1/L1)
approx(MAKELIST(((L2(X)-AM)/SD),X,1,N))▶L3 //z
approx(MAKELIST(((L2(X)-AM)/SD1),X,1,N))▶L4 //z´
//
approx(N,[AM,SEM],SD,SD1,VA,VA1,VQ,[QGM,QHM])
END;
#end
//
