//FX_(cell count a,b,c,d)/D.G.SCHRAUSSER/2025
//e.g.FX_(2,1,0,1)
//Exact hypergeometric 4-field test according to R. A. Fisher
//(Fisher Exact Test): Hypergeometric probability p to cell a of the 4-field initial arrangement for all possible arrangements a
//Exact significance levels p[exact1], p[exact2]
#cas
FX_(a,b,c,d):=
BEGIN
{}▶L1
1▶S
0▶X
0▶P20
0▶P21
0▶P3
a+b+c+d▶N
a+b▶z1
c+d▶z2
a+c▶s1
b+d▶s2
P0= (z1!*z2!*s1!*s2!)/(N!*a!*b!*c!*d!);
PRINT("P0-")
PRINT(P0)
PRINT("Pi-")
//
IF z1>s1 THEN max1=z1 ELSE max1=s1 END;
IF z1>s2 THEN max2=z1 ELSE max2=s2 END;
IF z2>s1 THEN max3=z2 ELSE max3=s1 END;
IF z2>s2 THEN max4=z2 ELSE max4=s2 END;
//
FOR I FROM 0 TO max1 DO
FOR J FROM 0 TO max2 DO
FOR K FROM 0 TO max3 DO
FOR L FROM 0 TO max4 DO
a1=I+J;
a2=K+L; 
b1=I+K;
b2=J+L;
//
IF  
a1=z1 AND 
a2=z2 AND 
b1=s1 AND
b2=s2
THEN
IF  
I+J≠0 AND
K+L≠0 AND
I+K≠0 AND
J+L≠0
THEN
P10=(a1!*a2!*b1!*b2!)/(N!*I!*J!*K!*L!)
X+1▶X
P3=P10+P3
approx(P10)▶L1(X)
IF approx(P10)<approx(P0) OR approx(P10)=approx(P0)
THEN
P20+P10▶P20 END;
PRINT(P10)
END;
END;
//
END;
END;
END;
END;
PRINT("p--")
PRINT(P3)
//
FOR I FROM 1 TO X DO
IF L1(I)=P0 THEN
0▶S
END;
IF S=1 THEN
L1(I)+P21▶P21
END;
END;
P21+P0▶P21
P22=1-(P21)
// sums, P0, C, p[exact1], 1-p[exact1], p[exact2]
z1,z2,s1,s2,N,[P0],X,P21,P22,[P20]
END;
#end
//
