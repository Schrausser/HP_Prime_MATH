//PRM3(elements n, class m)/D.G.SCHRAUSSER/2025
//Complete permutation matrix w(P)n(km,kn-m) of n elements to class m, where P=n!/IIki!;n>=m
//equivalent to combination without repetition Cn(m)
//e.g.PRM3(6,3)[PRM3a]
#cas
PRM3(n,m):=
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
FOR K FROM 1 TO m DO
FOR L FROM K+1 TO m DO
IF L1(K)=L1(L) OR L1(K)>L1(L) THEN //<---
1▶SW
END;
END;
END;
IF SW=0 THEN
SUPPRESS(L1,n+1)▶L2(J)
J+1▶J
END;
0▶SW
END;//while
//
//L2▶M1
PRM3a(n,m)//
END;
#end
//
