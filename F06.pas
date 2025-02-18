//F06()/D.G.SCHRAUSSER/2025
//Function: Equations 6.0
//F3-6:Derivatives of Student's-t, f'(t)-f''''(t)
EXPORT F06()
BEGIN
"STUDENT_CDF(D,X)"▶F1;
"(Gamma(((D+1)/2))/Gamma((D/2)))*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2)"▶F2;
"∂(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X)"▶F3;
"∂(∂(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X),X)"▶F4;
"∂(∂(∂(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X),X),X)"▶F5;
"∂(∂(∂(∂(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X),X),X),X)"▶F6;
""▶F7;
""▶F8;
""▶F9;
""▶F0;
"Function: Equations 6.0"
END;
//
