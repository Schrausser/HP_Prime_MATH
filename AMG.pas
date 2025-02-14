//AMG()/D.G.SCHRAUSSER/2025
//Weighted arithmetic, geometric and harmonic mean
#cas
AMG():=
BEGIN
//L1()(2) provided
size(L1)▶L3(1)
mean(L1)(1)▶L3(2)
MAKELIST(L1(x)(1)*L1(x)(2),x,1,L3(1))▶L2
ΣLIST(L1)(2)▶L3(3)
Σ(L2)/L3(3)▶L3(4)
L3(3) NTHROOT (product((L1(x)(1))^L1(x)(2),x,1,L3(1)))▶L3(5)
L3(3)/(Σ(L1(x)(2)/L1(x)(1),x,1,L3(1)))▶L3(6)
//n,AM,sumni,GAM,GGM,GHM
L3
END;
#end
//
