//CPLX(complex number,a+bi)/D.G.SCHRAUSSER/2022
//e.g.CPLX(2+i/2),[AdvancedGraphing]
#cas
CPLX(C):=
BEGIN
C▶Z1
RE(Z1)▶R
IM(Z1)▶I
ABS(Z1)▶L1(1)
R▶X▶J
I▶K
"Y=√(1-X^2)"▶V5
"Y=-1*√(1-X^2)"▶V6
"Y=I"▶V7
"X=R"▶V8
"X<R AND X>0 AND Y>0 AND Y≤0.01"▶V0
"Y=(I/R)*X AND Y>0 AND X<R"▶V9
IF I<0 THEN
"Y=(I/R)*X AND Y<0 AND X<R"▶V9
END;
IF R<0 THEN
"Y=(I/R)*X AND Y>0 AND X>R"▶V9
END;
IF I<0 AND R<0 THEN
"Y=(I/R)*X AND Y<0 AND X>R"▶V9
END;
ARG(Z1)▶L1(2)
CONVERT(L1(2)_rad,1_deg)▶L1(3)
RETURN(L1);
END;
#end
//
