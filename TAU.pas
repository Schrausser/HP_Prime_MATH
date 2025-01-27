//TAU()/D.G.SCHRAUSSER/2025
//Kendall's τ coefficient (tau-a)
#cas
TAU():=
BEGIN
//L1,L2 provided
SIZE(L1)▶N
FOR I FROM 1 TO N-1 DO
((SIGN(L1(I)-L1(I+1))))*((SIGN(L2(I)-L2(I+1))))▶L3(I)
IF L3(I)=1 THEN 0▶L3(I) END;
IF L3(I)=-1 THEN 1▶L3(I) END;
888▶M1(L1(I),L2(I))
END;
888▶M1(L1(N),L2(N))
//(N*(N-1)/2-2*ΣLIST(L3))/(N*(N-1)/2)▶tau_a
approx(1-2*ΣLIST(L3)/(N*(N-1)/2))▶L4(1)
approx((√(N*(N-1)))/(√(2*(2*N+5)))*3*L4(1))▶L4(2)
NORMALD_CDF(L4(2))▶L4(3)
1-L4(3)▶L4(4)
L4(4)*2▶L4(5)
IF L4(3)<0.5 THEN 2*L4(3)▶L4(5)
((COMB(N,2)-ΣLIST(L3))-ΣLIST(L3))/√((1/18)*N*(N-1)*(2*N+5))▶L4(6)
END;
//taua,z,p,1-p,p2
[L4(1)],[L4(2)],L4(3),L4(4),[L4(5)]
END;
#end
//
