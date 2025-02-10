//GMVTLG(pA,r+1=n)/D.G.SCHRAUSSER/2025
//e.g.GMVTLG(1/6,10)
#cas
GMVTLG(P,N):=
BEGIN
MAKELIST(P*(1-P)^x,x,0,N-1)▶L1
MAKELIST(1-(1-P)^x,x,1,N)▶L2
STARTAPP("Statistiken_1_Var");
STARTVIEW(1);
"L1"▶H1(1);6▶H1(3);
"L2"▶H2(1);5▶H2(3);
//P,p
L1(N),L2(N)
END;
#end
//
