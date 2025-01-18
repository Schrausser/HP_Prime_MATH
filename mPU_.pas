//mPU_(simulation cycles M)/D.G.SCHRAUSSER/2025
//Permutation test in the random sampling model,
//randomized permutation, p-value not randomized, mP
//2 independent samples (x|g)
//(executes the entire permutation including intra class permutation)
//e.g.mPU_(100)
#cas
mPU_(M):=
BEGIN
//L1L2 provided
//
{}▶L3;{}▶L4
{}▶L5;{}▶L6
0▶M11
0▶M12
0▶M2
SIZE(L1)▶N1
SIZE(L2)▶N2
N=N1+N2
//N vector L7
FOR I FROM 1 TO N DO
I▶L7(I) END;
//
ABS(mean(L1)-mean(L2))▶Q02
ΣLIST(L1)▶Q011
ΣLIST(L2)▶Q012
//
MSGBOX("mPU")
FOR J FROM 1 TO M 
DO
//
//prm vector L9
FOR A FROM 1 TO N DO
{RANDINT(N),L7(A)}▶L0(A) END;
sort(L0)▶L9
FOR A FROM 1 TO N DO
L9(A)▶L8;L8(2)▶L9(A) END;
{}▶L8
CONCAT(L1,L2)▶L8
//
FOR A FROM 1 TO  N1 DO
L8(L9(A))▶L3(A) END;
FOR A FROM 1 TO  N2 DO
L8(L9(N1+A))▶L4(A) END;
ABS(mean(L3)-mean(L4))▶QJ2
ΣLIST(L3)▶QJ11
ΣLIST(L4)▶QJ12
IF QJ11≥Q011 THEN M11=M11+1 END;
IF QJ12≥Q012 THEN M12=M12+1 END;
IF QJ2≥Q02 THEN M2=M2+1 END;
//
QJ11▶L5(J)
QJ2▶L6(J)
//
END;
//
SORT(L5)▶L5
SORT(L6)▶L6
{}▶L7
{}▶L8
{}▶L9
{}▶L0
//
N1,N2,[Q011,Q012,Q02],M11/M,M12/M,M2/M
END;
#end
//
