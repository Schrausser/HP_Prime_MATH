//TT_(y)/D.G.SCHRAUSSER/2025
//One-sample t-test for test variable y
//e.g TT_(5.3)
#cas
TT_(Y):=
BEGIN
//L1 provided
size(L1)▶N
N-1▶df
mean(L1)▶x
variance(L1)▶s2
approx((x-Y)/(sqrt(s2/(N-1))))▶t
p=STUDENT_CDF(df,t)
1-p▶p1
2*p▶p2
IF p2>1 THEN 2*(1-p)▶p2 END;
df,[t],p,p1,[p2]
END;
#end
//
