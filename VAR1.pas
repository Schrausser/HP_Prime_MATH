//VAR1(n var)/D.G.SCHRAUSSER/2025
//e.g.VAR1(5)/variation vector (v)n from L1
#cas
VAR1(N):=
BEGIN
//L1(N) provided
{}▶L2
FOR A FROM 1 TO N DO
L1(RANDINT(1,N))▶L2(A) END;
//
L2
END;
#end
//
