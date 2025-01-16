//PRM2(elements n)/D.G.SCHRAUSSER/2025
//Complete permutation matrix (P) of elements n
//e.g.PRM2(3)
#cas
PRM2(n):=
BEGIN
MAKELIST(1,P,1,n+1)▶L1
0▶L1(1)
{}▶L2
0▶M1
1▶J
0▶I
0▶SW
//
WHILE I≠n AND L1(I)≤n DO
FOR I FROM 1 TO n DO
IF I=1 THEN L1(1)+1▶L1(1) END;
IF I=n AND L1(I)>n THEN BREAK END;
IF L1(I)>n THEN
1▶L1(I);L1(I+1)+1▶L1(I+1)
END;
END;//I
//
FOR K FROM 1 TO n DO
FOR L FROM K+1 TO n DO
IF L1(K)=L1(L) THEN 
1▶SW
BREAK;
END;
END;
END;
IF SW=0 THEN
SUPPRESS(L1,n+1)▶L2(J);J+1▶J
END;
0▶SW
END;//while
//
L2▶M1
END;
#end
//
