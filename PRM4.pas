//PRM4(elements n, class m)/D.G.SCHRAUSSER/2025
//variation matrix w(V)n(m), where V=n^m;n>=m
//e.g.PRM4(4,2)
#cas
PRM4(n,m):=
BEGIN
MAKELIST(1,P,1,n+1)▶L1
0▶L1(1)
{}▶L2
0▶M1
1▶J
0▶I
0▶SW
//
WHILE I≠m AND L1(I)<n DO
FOR I FROM 1 TO m DO
IF I=1 THEN L1(1)+1▶L1(1) END;
IF I=m AND L1(I)>n THEN BREAK END;
IF L1(I)>n THEN
1▶L1(I)
L1(I+1)+1▶L1(I+1)
END;
END;//I
//
SUPPRESS(L1,n+1)▶L2(J);J+1▶J
END;//while
//
L2▶M1
END;
#end
//
