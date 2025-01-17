//PRM4a(elements n, class m)/D.G.SCHRAUSSER/2025
//e.g.PRM4a(4,3)
#cas
PRM4a(N,M):=
BEGIN
//L2 provided
V=N^M
X=M+1
FOR I FROM 1 TO V DO
L2(I)▶L3
SUPPRESS(L3,X,N)▶L4(I)
END;
L4▶M1
V,M1
END;
#end
//
