//mPV_(simulation cycles M)/D.G.SCHRAUSSER/2025
//Permutation test in the random sampling model,
//randomized permutation, p-value not randomized, mP
//2 dependent samples (x1|x2)
//e.g.mPV_(100)
#cas
mPV_(M):=
BEGIN
//L1()(2) provided
0▶M11;0▶M12;0▶M2
SIZE(L1)(1)▶N
//sum,Q0
ΣLIST(L1)▶L2;ΣLIST(L2.^2)▶Q02
L2(1)▶Q011;L2(2)▶Q012
//
MSGBOX("mPV")
FOR A FROM 1 TO M DO //mP
//
FOR I FROM 1 TO N DO
RANDINT(0,1)▶L8(I) END;
FOR J FROM 1 TO N DO
IF L8(J)=1 THEN REVERSE(L1(J))▶L3(J)
ELSE L1(J)▶L3(J) END;
END; //J
ΣLIST(L3)▶L4;ΣLIST(L4.^2)▶Q2
L4(1)▶Q11;L4(2)▶Q12
Q11▶L5(A)
Q12▶L6(A)
Q2▶L7(A)
IF Q11≥Q011 THEN M11=M11+1 END;
IF Q12≥Q012 THEN M12=M12+1 END;
IF Q2≥Q02 THEN M2=M2+1 END;
//
END;//mP
//
SORT(L5)▶L5;SORT(L6)▶L6;SORT(L7)▶L7
//n,Q011,Q012,Q02,p11,p12,p2
N,[Q011,Q012,Q02],M11/M,M12/M,M2/M
END;
#end
//
