//F05()/D.G.SCHRAUSSER/2025
//Function: Equations 5.0
//F2-5,F7-0:Derivatives of the circular function, f'(t)-f''''(t)
EXPORT F05()
BEGIN
"√(1-X^2)"▶F1;
"∂(√(1-X^2),X)"▶F2;
"∂(∂(√(1-X^2),X),X)"▶F3;
"∂(∂(∂(√(1-X^2),X),X),X)"▶F4;
"∂(∂(∂(∂(√(1-X^2),X),X),X),X)"▶F5;
"-√(1-X^2)"▶F6;
"∂(-√(1-X^2),X)"▶F7;
"∂(∂(-√(1-X^2),X),X)"▶F8;
"∂(∂(∂(-√(1-X^2),X),X),X)"▶F9;
"∂(∂(∂(∂(-√(1-X^2),X),X),X),X)"▶F0;
"Function: Equations 5.0"
END;
//
