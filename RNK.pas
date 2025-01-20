//RNK()/D.G.SCHRAUSSER/2025
//L1 to ranking scale L3
#cas
RNK():=
BEGIN
//L1 provided
{}▶L2
{}▶L3
1▶R
0▶S1
0▶Q01
0▶V
SIZE(L1)▶N
SORT(L1)▶L2
FOR I FROM 2 TO N+1 DO
R▶L3(I-1)
IF L2(I-1)≠L2(I) THEN
IF S1=1 THEN
R=R+Q01
Q01=0;S1=0
1+V▶V
END;
R+1▶R
ELSE
Q01+1▶Q01;S1=1
END;
END;
Σ(L3)▶SR
//n,linked R,Rsum,meanR
approx(N,V,SR,[SR/N])
END;
#end
//
