//F03()/D.G.SCHRAUSSER/2025
//Function: Equations 3.0
//F3-7:Derivatives of the standard normal distribution function, f'(z)-f'''''(z)
EXPORT F03()
BEGIN
"NORMALD_CDF(0,1,X)"▶F1;
"NORMALD(0,1,X)"▶F2;
"∂((1/√(2*π))*e^((-1/2)*X^2),X=X)"▶F3;
"∂(∂((1/√(2*π))*e^((-1/2)*X^2),X),X)"▶F4;
"∂(∂(∂((1/√(2*π))*e^((-1/2)*X^2),X),X),X)"▶F5;
"∂(∂(∂(∂((1/√(2*π))*e^((-1/2)*X^2),X),X),X),X)"▶F6;
"∂(∂(∂(∂(∂((1/√(2*π))*e^((-1/2)*X^2),X),X),X),X),X)"▶F7;
"0"▶F8;
"0"▶F9;
"0"▶F0;
"Function: Equations 3.0"
END;
//
