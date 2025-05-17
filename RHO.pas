//RHO()/D.G.SCHRAUSSER/2025
//Spearman's rank correlation coefficient rho rs/[pCor]
#cas
RHO():=
BEGIN
//L1()(2) provided
size(L1)▶N
mean(L1)▶L3
MAKELIST((L1(I)(1)-L1(I)(2))^2,I,1,N)▶L2
Σ(L2)▶SUM
RHO=1-((6*SUM)/(N*(N^2-1)))
pCor(RHO,N)▶L4
//n,rho,r,p2rho
approx(N,[RHO,correlation(L1)],L4(3))
END;
#end
//
