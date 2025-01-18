//mPU2(simulation cycles M)/D.G.SCHRAUSSER/2025
//Permutation test in the random sampling model,
//randomized permutation, p-value not randomized, mP
//2 independent samples (x|g)
//e.g.mPU2(100)
#cas
mPU2(M):=
BEGIN
//L1L2 provided
//
{}▶L3;{}▶L4
{}▶L5;{}▶L6
0▶M11
0▶M12
0▶M02
0▶X
0▶J
SIZE(L1)▶N1
SIZE(L2)▶N2
N=N1+N2
//
MAKELIST(x+1,x,0,N-1)▶L7
MAKELIST(0,x,0,1)▶L51
MAKELIST(x+1,x,0,N1-1)▶L71
//
ABS(mean(L1)-mean(L2))▶Q02
ΣLIST(L1)▶Q011
ΣLIST(L2)▶Q012
//
MSGBOX("mPU")
WHILE J<M 
DO
//
FOR A FROM 1 TO N DO
{RANDOM(),L7(A)}▶L0(A) END;
//diff 
{}▶L9
SORT(L0)▶L31 //
FOR A FROM 1 TO N1 DO
L31(A)▶L51;L51(2)▶L6(A)
END;
sort(L0)▶L9
FOR A FROM 1 TO N DO
L9(A)▶L8;L8(2)▶L9(A) END;
{}▶L8
L9==L7▶V
//
IF DIFFERENCE(L6,L71)≠{} AND V=0 
THEN
J+1▶J
CONCAT(L1,L2)▶L8
FOR A FROM 1 TO  N1 DO
L8(L9(A))▶L3(A) END;
FOR A FROM 1 TO  N2 DO
L8(L9(N1+A))▶L4(A) END;
ABS(mean(L3)-mean(L4))▶QJ2
ΣLIST(L3)▶QJ11
ΣLIST(L4)▶QJ12
IF QJ11≥Q011 THEN M11=M11+1 END;
IF QJ12≥Q012 THEN M12=M12+1 END;
IF QJ2≥Q02 THEN M02=M02+1 END;
//
QJ11▶L5(J)
QJ2▶L6(J)
//
ELSE
X+1▶X
END; //IF diff
END; //M
//
SORT(L5)▶L5
SORT(L6)▶L6
{}▶L8
{}▶L0
//
X,J,N1,N2,[Q011,Q012,Q02],M11/M,M12/M,[M02/M]
END;
#end
//
