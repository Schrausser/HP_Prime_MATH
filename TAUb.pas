//TAUb()/D.G.SCHRAUSSER/2025
//Kendall's τ coefficient (tau-b)
#cas
TAUb():=
BEGIN
//L1,L2 provided
SIZE(L1)▶N
FOR I FROM 1 TO N-1 DO
((SIGN(L1(I)-L1(I+1))))*((SIGN(L2(I)-L2(I+1))))▶L3(I)
IF L3(I)=1 THEN 0▶L3(I) END;
IF L3(I)=-1 THEN 1▶L3(I) END;
END;
N*(N-1)*0.5▶L4(1)
ΣLIST(L3)▶L4(3)
L4(1)-L4(3)▶L4(2)
N-SIZE(UNION(L1,{}))▶L4(4)
N-SIZE(UNION(L2,{}))▶L4(5)
L4(2)-L4(3)▶L4(6)
sqrt((L4(1)-L4(4))*(L4(1)-L4(4)))▶L4(7)
//Tau-b
approx(L4(6)/L4(7))▶L4(8)
END;
#end
//
