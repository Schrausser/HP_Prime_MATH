//F02Z()/D.G.SCHRAUSSER/2025
//Graph 3D: Equations 2.0
//Complex plane f(z)=z,
//with z=|x+i|
//where f(x,y=i)=√x²+y²
EXPORT F02Z()
BEGIN
"√(X^2+Y^2)"▶FZ1
"(1/π)*e^(-(ABS(√(X^2+Y^2))^2))"▶FZ2
"X^((√(X^2+Y^2))-1)*e^(-X)"▶FZ3
"√((1-X^2)+(1-Y^2))"▶FZ4;
"−1*√((1-X^2)+(1-Y^2))"▶FZ5;
"√(1-X^2-Y^2)"▶FZ6;
"−1*√(1-X^2-Y^2)"▶FZ7;
"√((X-X^2)+(Y-Y^2))"▶FZ8;
"−1*√((X-X^2)+(Y-Y^2))"▶FZ9;
"SIN(X)*SIN(Y)*1.5"▶FZ0;
"Graph 3D: Equations 2.0"
END;
//
