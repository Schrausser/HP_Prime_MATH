//VFCH(cell count a,b,c,d)/D.G.SCHRAUSSER/2025
//2×2 chi-squared test for independence
//L0: Observed frequencies abcd fb
//L1: Expected frequencies fe
//L2,L3,L4: Probabilities p(A^B), p(B|A), p(A|B)
//L5: Chi-squared,(w. Yates corr.)
//L6: 2-tailed sig. p2
//Chi-square McNemar (w. Yates corr.) with p2
//e.g.VFCH(17,12,14,24)
//
#cas
VFCH(a,b,c,d):=
BEGIN
a▶L0(1)
b▶L0(2)
c▶L0(3)
d▶L0(4)
a+b+c+d▶N
a+b▶z1
c+d▶z2
a+c▶s1
b+d▶s2
z1/z2▶Z01
s1/s2▶S01
//p
a/N▶L1(1)
b/N▶L1(2) 
z1/N▶L1(5)
c/N▶L1(3)
d/N▶L1(4)
z2/N▶L1(6)
s1/N▶L1(7)
s2/N▶L1(8)
//fe
L1(7)*z1▶L2(1)
L1(8)*z1▶L2(2)
L1(7)*z2▶L2(3)
L1(8)*z2▶L2(4)
//p(B|A)
L0(1)/s1▶L3(1)
L0(2)/s2▶L3(2)
L0(3)/s1▶L3(3)
L0(4)/s2▶L3(4)
//p(A|B)
L0(1)/z1▶L4(1)
L0(2)/z1▶L4(2)
L0(3)/z2▶L4(3)
L0(4)/z2▶L4(4)
//
//CHI2
L0(1)-L2(1)▶L5(1);L5(1)^2▶L6(1);L6(1)/L2(1)▶L5(1)
L0(2)-L2(2)▶L5(2);L5(2)^2▶L6(1);L6(1)/L2(2)▶L5(2)
L0(3)-L2(3)▶L5(3);L5(3)^2▶L6(1);L6(1)/L2(3)▶L5(3)
L0(4)-L2(4)▶L5(4);L5(4)^2▶L6(1);L6(1)/L2(4)▶L5(4)
L5(1)+L5(2)▶L5(5)
L5(3)+L5(4)▶L5(6)
L5(1)+L5(3)▶L5(7)
L5(2)+L5(4)▶L5(8)
L5(7)+L5(8)▶L5(9)
1-CHISQUARE_CDF(1,L5(1))▶L6(1)
1-CHISQUARE_CDF(1,L5(2))▶L6(2)
1-CHISQUARE_CDF(1,L5(3))▶L6(3)
1-CHISQUARE_CDF(1,L5(4))▶L6(4)
1-CHISQUARE_CDF(1,L5(5))▶L6(5)
1-CHISQUARE_CDF(1,L5(6))▶L6(6)
1-CHISQUARE_CDF(1,L5(7))▶L6(7)
1-CHISQUARE_CDF(1,L5(8))▶L6(8)
1-CHISQUARE_CDF(1,L5(9))▶L6(9)
//Yates corr.
IF L2(1)<7  AND L2(1)>4  OR
L2(2)<7 AND L2(2)>4  OR
L2(3)<7 AND L2(3)>4  OR
L2(4)<7 AND L2(4)>4 
THEN
(N*(ABS((L0(1)*L0(4)-L0(2)*L0(3))-N/2))^2/(z1*z2*s1*s2))▶L5(9)
1-CHISQUARE_CDF(1,L5(9))▶L6(9)
END;
MNX=(b-c)^2/(b+c)
//Yates corr.
IF b+c<30 AND b+c>20 THEN 
MNX=(ABS(b-c)-0.5)^2/(b+c)
END 
pMNX=1-CHISQUARE_CDF(1,MNX)
//n,mnchi2,mnp2,chi2,p2
N,[MNX],[pMNX],[L5(9)],[L6(9)]
END;
#end
//
