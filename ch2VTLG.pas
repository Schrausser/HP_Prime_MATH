//ch2VTLG(chi-squared,df)/D.G.SCHRAUSSER/2025
//e.g.ch2VTLG(2.65,1)[AdvancedGraphing]
#cas
ch2VTLG(ch2,D):=
BEGIN
G=Gamma(D/2)
//P=∫((1/(2^(D/2)*G))*X^((D/2)-1)*e^(-X/2),X,0,ch2)
P=CHISQUARE(D,ch2)
ch2▶C
"Y=(1/(2^(D/2)*G))*X^((D/2)-1)*e^(-X/2)"▶V1
"Y<(1/(2^(D/2)*G))*X^((D/2)-1)*e^(-X/2) AND Y>0 AND X<C"▶V2
STARTAPP("Erweiterte_Grafiken");
STARTVIEW(1);
[1-P]
END;
#end
//
