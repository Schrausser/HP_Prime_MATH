//tVTLNG(t,df)/D.G.SCHRAUSSER/2025
//e.g.tVTLNG(2.65,8)[AdvancedGraphing]
#cas
tVTLNG(T857,D187):=
BEGIN
G25478=Gamma((D187+1)/2)/Gamma(D187/2)
P=∫(G25478*(D187*π)^(-1/2)*(1+(X^2/D187))^(-(D187+1)/2),X,−∞,T857)
T857▶C
D187▶D
G25478▶G
"Y=(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2))"▶V1
"Y<(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2)) AND Y>0 AND X<C"▶V2
"Y=(1/√(2*π))*e^((-1/2)*(X)^2)"▶V3
STARTAPP("Erweiterte_Grafiken");
STARTVIEW(1);
IF P>0.5 THEN P=1-P END;
P,[2*P]
END;
#end
//
