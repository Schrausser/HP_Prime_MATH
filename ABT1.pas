//ABT1()/D.G.SCHRAUSSER/2022
//Binomialp[A1:bA2:c]/Addp[C1:pC2:nC3:k]
#cas
ABT1():=
BEGIN
STARTAPP("Arbeitsblatt");
STARTVIEW(1)
5▶A1;
5▶A2;
=A1+A2▶A3;
0.5▶B1;
=BINOMIAL_CDF(A3,B1,A1)▶B4
0.5▶C1;
8▶C2;
1▶C5;
=1-(1-C1)^C2▶D4;
=Σ((C5+I-1)!/(I!*(C5-1)!)*C1^C5*(1-C1)^I,I,0,C2-C5)▶D6;
END;
#end 
//
