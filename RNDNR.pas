//RNDNR(cases n)/D.G.SCHRAUSSER/2025
//e.g.RNDNR(100)
#cas
RNDNR(N):=
BEGIN
MAKELIST(RANDOM(),L,0,N-1)▶L7
MAKELIST(RANDNORM(0,1),L,0,N-1)▶L8
SORT(L7)▶L7
SORT(L8)▶L8
L8
END;
#end
//
