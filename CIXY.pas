//CIXY(x,y'CI)/D.G.SCHRAUSSER/2022
//Standard error of prediction sy'x, CI
//e.g.CIXY(3,0.99[ZWERT,Statistics_2_Var,Spreadsheet,AdvancedGraphing]
#cas
CIXY(X,C):=
BEGIN
//C1C2 provided
STARTAPP("Statistiken_2_Var");
STARTVIEW(−6)
A=Corr
B=sY
D=MeanY
PredY(X)▶L3(2);
√(1-A^2)*B*NORMALD_ICDF(1-((1-C)/2))▶L3(4)
L3(4)+L3(2)▶L3(3)
L3(2)-L3(4)▶L3(1)
C▶L3(5)
ZWERT(L3(1),D,B)▶L4(1)
ZWERT(L3(2),D,B)▶L4(2)
ZWERT(L3(3),D,B)▶L4(3)
L4(1)▶U
L4(3)▶O
ZWERT(X,MeanX,sX)▶Q
STARTAPP("Arbeitsblatt");
"ŷ-"▶A1;L3(1)▶B1;L4(1)▶C1
"ŷ"▶A2;L3(2)▶B2;L4(2)▶C2
"ŷ+"▶A3;L3(3)▶B3;L4(3)▶C3
"±"▶A4;L3(4)▶B4;L3(4)/B▶C4
"CI"▶A5;L3(5)▶B5;
STARTAPP("Erweiterte_Grafiken");
STARTVIEW(1)
"Y=A*X"▶V3
"Y>0 AND (Y<A^(-1)*X AND Y>A*X) OR Y<0 AND (Y>A^(-1)*X AND Y<A*X)"▶V4
"Y=√(1-X^2)"▶V5
"Y=-1*√(1-X^2)"▶V6
"X<A AND X>0 AND Y<A AND Y>0"▶V7
CAS((X,Y)->((Y<O) AND (Y>U)) AND ((X==Q))▶V0)
//y'-,y',y'+,sy'x,CIp
RETURN(L3);
END;
#end
//
