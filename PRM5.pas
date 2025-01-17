//PRM5(cases n)/D.G.SCHRAUSSER/2025
//variation matrix w(V)2(n) for dependent 2 sample design PV_,
//where V=2^n
//e.g.PRM5(3)
#cas
PRM5(N):=
BEGIN
M1=0
2^N▶P
X=−1
0▶Z
P/2▶A
//
FOR I FROM 1 TO N DO
FOR J FROM 1 TO P DO
X▶M1(J,I)
Z=Z+1
IF Z=A THEN X=X*−1;0▶Z; END;
END;
0▶Z
// A=A/2 //
A=A*0.5
END;
//
M1▶L3
M1
END;
#end
//
