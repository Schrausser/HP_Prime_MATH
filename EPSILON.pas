//EPSILON(x1,m1,m2,s12,d)/D.G.SCHRAUSSER/2022
//e.g.EPSILON(106,100,110,15,25)
#cas
EPSILON(X,M,N,S,D):=
BEGIN
G=Gamma((D+1)/2)/Gamma(D/2)
E=(N-M)/S
P=1-∫(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X,−∞,E)
T=(((N+M)/2)-M)/S
H=1-∫(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X,−∞,T)
Q=(X-M)/S
R=1-∫(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X,−∞,Q)
U=∫(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X,−∞,(X-N)/S)
B=1-U
"X>T AND X≤T"▶V1
"X>Q AND X≤Q"▶V2
//
D▶K
"X>0 AND X<E AND Y<0 AND Y>-0.01"▶V3
"Y<(G*(K*π)^(-1/2)*(1+((E-X)^2/K))^(-(K+1)/2)) AND Y>0 AND X>Q"▶V6
"Y<(G*(K*π)^(-1/2)*(1+((E-X)^2/K))^(-(K+1)/2)) AND Y>0 AND X<Q"▶V7
"Y=(G*(K*π)^(-1/2)*(1+((E-X)^2/K))^(-(K+1)/2))"▶V8
"Y=(G*(K*π)^(-1/2)*(1+((X)^2/K))^(-(K+1)/2))"▶V0
"Y<(G*(K*π)^(-1/2)*(1+((X)^2/K))^(-(K+1)/2)) AND Y>0 AND X>Q"▶V9
E▶L2(1);P▶L3(1);N▶L1(1)
T▶L2(2);H▶L3(2);T*S+M▶L1(2)
Q▶L2(3);R▶L3(3);Q*S+M▶L1(3)
U▶L4(3);B▶L5(3)
STARTAPP("Arbeitsblatt");
"ε"▶A1;L2(3)▶B1;L2(2)▶C1;L2(1)▶D1;
"x"▶A2;L1(3)▶B2;L1(2)▶C2;L1(1)▶D2;
"α"▶A3;L3(3)▶B3;L3(2)▶C3;L3(1)▶D3;
"β"▶A4;L4(3)▶B4;
"1-β"▶A5;L5(3)▶B5;
STARTAPP("Erweiterte_Grafiken")
STARTVIEW(1)
RETURN(L2(1),L3(3),L4(3));
END;
#end
//
