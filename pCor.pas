//pCor(correlation r,n)/D.G.SCHRAUSSER/2025
//e.g.pCor(0.94,4)
#cas
pCor(r,n):=
BEGIN
t=(r*√(n-2))/√(1-r^2)
p=STUDENT_CDF(n-2,t)
2*p▶p2
IF p>0.5 THEN 2*(1-p)▶p2 END;
//t-value, p-value, p2
[t],p,[p2]
END;
#end
//
