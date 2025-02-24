//MDN()/D.G.SCHRAUSSER/2025
//Mean dispersion D
#cas
MDN():=
BEGIN
approx(mean(L1))▶L4(1)
MAKELIST(approx(ABS(L1(x)-L4(1))),x,1,SIZE(L1))▶L2
FOR I FROM 1 TO SIZE(L1) DO
1▶L3(I)
IF L1(I)=L4(1) THEN
0▶L3(I)
END;
END;
stddev(L2)▶L4(2)
Σ(L2)/Σ(L3)▶L4(3)
L4(2)*L4(3)*(SIZE(L1)/(SIZE(L1)-1))▶L4(4)
0.5*√((L4(2)*(SIZE(L1)/(SIZE(L1)-1)))/(SIZE(L1)))▶L4(5)
//AM,s,D,D',sD
END;
#end
//
