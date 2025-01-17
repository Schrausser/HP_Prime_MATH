//PU_()/D.G.SCHRAUSSER/2025
//Permutation test in the random sampling model,
//systematic permutation, p-value not randomized, mP
//2 independent samples (x|g)
#cas
PU_():=
BEGIN
//PRM3 L1<=L2 provided
M2▶M1
{}▶L3;{}▶L4
{}▶L5;{}▶L6
0▶M11
0▶M12
0▶M2
SIZE(L1)▶N1
SIZE(L2)▶N2
N=N1+N2 //n1<=n2
COMB(N,N1)▶M
//
{}▶L8
//
ABS(mean(L1)-mean(L2))▶Q02
ΣLIST(L1)▶Q011
ΣLIST(L2)▶Q012
CONCAT(L1,L2)▶L8 //
//MSGBOX("PU")
FOR J FROM 1 TO M DO
//
FOR A FROM 1 TO  N1 DO
L8(M1(J,A))▶L3(A) END; //<--
FOR A FROM 1 TO  N2 DO
L8(M1(J,N1+A))▶L4(A) END; //<--
ABS(mean(L3)-mean(L4))▶QJ2
ΣLIST(L3)▶QJ11
ΣLIST(L4)▶QJ12
IF QJ11≥Q011 THEN M11=M11+1 END;
IF QJ12≥Q012 THEN M12=M12+1 END;
IF QJ2≥Q02 THEN M2=M2+1 END;
//
approx(QJ11)▶L5(J)
approx(QJ2)▶L6(J)
//
END;//M
//
SORT(L5)▶L5
SORT(L6)▶L6
{}▶L7
{}▶L8
{}▶L9
{}▶L0
//
M,N1,N2,[Q011,Q012,Q02],M11/M,M12/M,M2/M
END;
#end
//
