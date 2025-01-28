//TV_()/D.G.SCHRAUSSER/2025
//t-test for paired samples 
#cas
TV_():=
BEGIN
//L1()(2) provided
size(L1)▶n
n-1▶df
FOR I FROM 1 TO n DO
L1(I)(1)-L1(I)(2)▶L2(I)
L2(I)^2▶L3(I)
END;
ΣLIST(L2)▶Sxd
ΣLIST(L3)▶Sxd2
t=Sxd/n
t = (t/((√((Sxd2-Sxd^2/n)/(n-1)))/(√n)))
t=approx(t)
p=STUDENT_CDF(df,t)
p▶p1
IF p>0.5 THEN 1-p▶p1 END;
2*p1▶p2
//
df,[t],p,p1,[p2]
END;
#end
//
