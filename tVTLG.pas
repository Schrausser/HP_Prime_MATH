//tVTLG(t,df)/D.G.SCHRAUSSER/2025
//e.g.tVTLNG(2.65,8)[AdvancedGraphing]
#cas
tVTLG(t,D):=
BEGIN
G=Gamma((D+1)/2)/Gamma(D/2)
P=∫(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X,−∞,t)
t▶C
"Y=(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2))"▶V1
"Y<(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2)) AND Y>0 AND X<C"▶V2
STARTAPP("Erweiterte_Grafiken");
STARTVIEW(1);
IF P>0.5 THEN P=1-P END;
P,[2*P]
END;
#end
//
