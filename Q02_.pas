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
stddevp(L1)▶SD1
approx(MAKELIST(((L2(X)-AM)/SD),X,1,N))▶L3 //
Σ(L3.^3)/N▶A3
sqrt(6/N)▶SA3
Σ(L3.^4)/N-3▶A4
2*SA3▶SA4
Σ((L1 .- AM) .^ 3)*N/((N-1)*(N-2)*SD1^3)▶A31
A41=((N-1)*(N-2)*(N-3)*SD1^4)
EX1=Σ((L1 .- AM) .^ 4)*N*(N+1)
EX2=Σ((L1 .- AM) .^ 2)
EX2=3*EX2*EX2*(N-1)
A41=(EX1-EX2)/A41
//
approx(N,[A3,A31],SA3,[A4,A41],SA4)
END;
#end
//
