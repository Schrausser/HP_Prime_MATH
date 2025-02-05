//PV_()/D.G.SCHRAUSSER/2025
//Permutation test in the random sampling model,
//systematic permutation, p-value not randomized, P
//2 paired samples (x1|x2)[PRM5]
#cas
PV_():=
BEGIN
//L1()(2) provided
0▶M11;0▶M12;0▶M2
SIZE(L1)(1)▶N
PRM5(N);{}▶L3
P=2^N
//sum,Q0
ΣLIST(L1)▶L2;ΣLIST(L2.^2)▶Q02
L2(1)▶Q011;L2(2)▶Q012
//
//MSGBOX("PV")
FOR A FROM 1 TO P DO //P
//
FOR I FROM 1 TO N DO
IF M1(A,I)=1 THEN REVERSE(L1(I))▶L3(I) //<--
ELSE L1(I)▶L3(I) END;
END; //I
ΣLIST(L3)▶L4;ΣLIST(L4.^2)▶Q2
L4(1)▶Q11;L4(2)▶Q12
Q11▶L5(A)
Q12▶L6(A)
Q2▶L7(A)
IF Q11≥Q011 THEN M11=M11+1 END;
IF Q12≥Q012 THEN M12=M12+1 END;
IF Q2≥Q02 THEN M2=M2+1 END;
//
END;//P
//
SORT(L5)▶L5;SORT(L6)▶L6;SORT(L7)▶L7
//n,Q011,Q012,Q02,p11,p12,p2
P,N,[Q011,Q012,Q02],M11/P,M12/P,M2/P
END;
#end
//
