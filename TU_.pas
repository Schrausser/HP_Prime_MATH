//TU_()/D.G.SCHRAUSSER/2025
//t-test for unpaired samples 
#cas
TU_():=
BEGIN
//L1L2 provided
0▶Sx1
0▶Sx2
SIZE(L1)▶n1
SIZE(L2)▶n2
n1+n2-2▶df
mean(L1)▶x1
mean(L2)▶x2
FOR I FROM 1 TO n1 DO
Sx1=Sx1+(L1(I)-x1)^2 END;
FOR I FROM 1 TO n2 DO
Sx2=Sx2+(L2(I)-x2)^2 END;
t=x1-x2
t=t/(√((Sx1+Sx2)/((n1-1)+(n2-1)))*√(1/n1+1/n2))
t=approx(t)
p=STUDENT_CDF(df,t)
p1=p
IF p>0.5 THEN p1=1-p END;
p2=2*p1
df,[t],p,p1,[p2]
END;
#end
//
