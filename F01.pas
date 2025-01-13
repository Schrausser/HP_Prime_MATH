//F01()/D.G.SCHRAUSSER/2022
//Function: Equations 1.0
EXPORT F01()
BEGIN
"√(1-((X-W)/A)^2)*A+V"▶F1;
"−√(1-((X-W)/A)^2)*A+V"▶F2;
"√(1-((X-T)/B)^2)*B+U"▶F3;
"-√(1-((X-T)/B)^2)*B+U"▶F4;
"√(1-((X-R)/C)^2)*C+S"▶F5;
"-√(1-((X-R)/C)^2)*C+S"▶F6;
200▶A;
150▶B;
344▶C;
1▶W;
450▶T;
1000▶R;
"Function: Equations 1.0"
END;
//
