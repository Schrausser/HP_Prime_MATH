//Q02_()/D.G.SCHRAUSSER/2025
//Statistical parameters 2.0
//[L1:Raw]
//L2:Distribution
//L3:z-value
#cas
Q02_():=
BEGIN
//L1 provided
SORT(L1)▶L2 //
SIZE(L1)▶N
mean(L1)▶AM
stddev(L1)▶SD
approx(MAKELIST(((L2(X)-AM)/SD),X,1,N))▶L3 //
Σ(L3.^3)/N▶A3
sqrt(6/N)▶SA3
Σ(L3.^4)/N-3▶A4
2*SA3▶SA4
//
approx(N,[A3],SA3,[A4],SA4)
END;
#end
//
