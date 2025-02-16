//F02Z()/D.G.SCHRAUSSER/2025
//Graph 3D: Equations 2.0
//Complex plane f(z)=z,
//with z=|x+i|
//where f(x,y=i)=√x²+y²
EXPORT F02Z()
BEGIN
"√(X^2+Y^2)"▶FZ1;
"(1/π)*e^(-(ABS(√(X^2+Y^2))^2))"▶FZ2;
"X^((√(X^2+Y^2))-1)*e^(-X)"▶FZ3;
""▶FZ4;
""▶FZ5;
""▶FZ6;
""▶FZ7;
""▶FZ8;
""▶FZ9;
""▶FZ0;
"Graph 3D: Equations 2.0"
END;
//
