//F07()/D.G.SCHRAUSSER/2025
//Function: Equations 7.0
//F3-6:Derivatives of chi², f'(t)-f''''(t)
EXPORT F07()
BEGIN
"CHISQUARE_CDF(D,X)"▶F1;
"(1/(2^(D/2)*G))*X^((D/2)-1)*e^(-X/2)"▶F2;
"∂((1/(2^(D/2)*G))*X^((D/2)-1)*e^(-X/2),X)"▶F3;
"∂(∂((1/(2^(D/2)*G))*X^((D/2)-1)*e^(-X/2),X),X)"▶F4;
"∂(∂(∂((1/(2^(D/2)*G))*X^((D/2)-1)*e^(-X/2),X),X),X)"▶F5;
"∂(∂(∂(∂((1/(2^(D/2)*G))*X^((D/2)-1)*e^(-X/2),X),X),X),X)"▶F6;
""▶F7;
""▶F8;
""▶F9;
""▶F0;
"Function: Equations 7.0"
END;
//
