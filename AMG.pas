//AMG()/D.G.SCHRAUSSER/2025
//Weighted arithmetic mean GAM
#cas
AMG():=
BEGIN
//L1()(2) provided
size(L1)▶N
MAKELIST(L1(x)(1)*L1(x)(2),x,1,N)▶L2
ΣLIST(L1)(2)▶N1
Σ(L2)/N1▶GAM
//
N,mean(L1)(1),N1,[GAM]
END;
#end
//
