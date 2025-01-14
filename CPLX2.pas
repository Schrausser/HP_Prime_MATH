//CPLX2(complex number,a+bi)/D.G.SCHRAUSSER/2022
//e.g.CPLX2(2+i/2)[CPLX,Spreadsheet]//
#cas
CPLX2(C):=
BEGIN
CPLX(C)
STARTAPP("Arbeitsblatt");
"z"▶A1;Z1▶B1
"|z|"▶A2;L1(1)▶B2
"∡π"▶A3;L1(2)▶B3
"∡°"▶A4;L1(3)▶B4
END;
#end
//
