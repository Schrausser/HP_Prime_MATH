//RHO()/D.G.SCHRAUSSER/2025
//Spearman's rank correlation coefficient rho rs, biserial rank correlation rbisR
#cas
RHO():=
BEGIN
//L1()(2) provided
size(L1)▶N
mean(L1)▶L3
MAKELIST((L1(I)(1)-L1(I)(2))^2,I,1,N)▶L2
ΣLIST(L2)▶SUM
RHO=1-((6*SUM)/(N*(N^2-1)))
KR=approx((2/(N/2))*(L3(1)-L3(2)))
//n,rho,rbisR,r
approx(N,[RHO,1-KR,correlation(L1)])
END;
#end
//
