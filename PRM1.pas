//PRM1(n perm)/D.G.SCHRAUSSER/2025
//e.g.PRM1(5)/permutation vector (p)n from L1
#cas
PRM1(N):=
BEGIN
//L1(N) provided
{}▶L0
{}▶L2
FOR A FROM 1 TO N DO
{RANDOM(),L1(A)}▶L0(A) END;
//
sort(L0)▶L2
FOR A FROM 1 TO N DO
L2(A)▶L8;L8(2)▶L2(A) END;
//
L2
END;
#end
//
