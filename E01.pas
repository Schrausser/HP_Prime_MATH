//E01()/D.G.SCHRAUSSER/2025
//Solve: Equations 1.0
//E1: Additive probability (P=p,X=pb,N=n; special addition theorem)
//E2: Negative binomial probability (P=p,N=pnb,R=n,K=1,2..,I=0.0)
//E3: Binomial probability (b,c)
//E4: Standard normal distribution z(0,1)
//E5: Effect size epsilon
//E6: Linear regression y'
//E7: Standard error of prediction y'+-C with zcrit
//E8: p of correlation r with n (2-tailed sig p2=2*(1-p);p>0.5)
EXPORT E01()
BEGIN
"X=1-(1-P)^N"▶E1;
"P=Σ(((A+B)!/(I!*(A+B-I)!))*2^(-I)*2^(-(A+B-I)),I,0,A)"▶E3;
"N=Σ(((K+I-1)!/(I!*(K-1)!))*P^K*(1-P)^I,I,0,R-K)"▶E2;
"P=NORMALD_CDF(0,1,Z)"▶E4;
"E=(A-X)/S"▶E5;
"Y=A*X+B"▶E6;
"C=(Z*√(1-R^2))*S"▶E7;
"P=STUDENT_CDF(N-2,(R*√(N-2))/√(1-R^2))"▶E8;
""▶E9;
""▶E0;
"Solve: Equations 1.0"
END;
// 
