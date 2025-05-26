//E03()/D.G.SCHRAUSSER/2025
//Solve: Equations 3.0
//E1: Resolution R from R0, f0, f1
//E2: Exposure Value E from Tv, Av
//E3: Aperture B from Av0, ISO0, ISO1
EXPORT E03()
BEGIN
"(A*B^2/F^2)=R"▶E1;
"(LN(2))^(-1)*LN(T*A^2)=E"▶E2;
"A*e^(0.5*LN(S^(-1)*I))=B"▶E3;
""▶E4;
""▶E5;
""▶E6;
""▶E7;
""▶E8;
""▶E9;
""▶E0;
"Solve: Equations 3.0"
END;
//
