//ch2VTLG(chi-squared,df)/D.G.SCHRAUSSER/2025
//e.g.ch2VTLG(2.65,1)[AdvancedGraphing]
#cas
ch2VTLG(C2569,A7485):=
BEGIN
G=Gamma(A7485/2)
//P=∫((1/(2^(A7485/2)*G))*X^((A7485/2)-1)*e^(-X/2),X,0,C)
P=CHISQUARE_CDF(A7485,C2569)
A7485▶A
C2569▶C
"Y=(1/(2^(A/2)*G))*X^((A/2)-1)*e^(-X/2)"▶V1
"Y<(1/(2^(A/2)*G))*X^((A/2)-1)*e^(-X/2) AND Y>0 AND X<C AND X>0"▶V2
STARTAPP("Erweiterte_Grafiken");
STARTVIEW(1);
[1-P]
END;
#end
//
