//PKR()/D.G.SCHRAUSSER/2025
//Partial corr rxy.z[pCor]
#cas
PKR():=
BEGIN
//L1L2L3 provided
size(L1)▶N
df=N-2
//rxy
FOR I FROM 1 TO N DO
L1(I)▶L5(1) 
L2(I)▶L5(2)
L5▶L4(I)
END;
approx(correlation(L4))▶r0
pCor(r0,N)(3)▶pr0
//rxz
FOR I FROM 1 TO N DO
L1(I)▶L5(1) 
L3(I)▶L5(2)
L5▶L4(I)
END;
approx(correlation(L4))▶r1
pCor(r1,N)(3)▶pr1
//ryz
FOR I FROM 1 TO N DO
L2(I)▶L5(1) 
L3(I)▶L5(2)
L5▶L4(I)
END;
approx(correlation(L4))▶r2
pCor(r2,N)(3)▶pr2
//rxy.z
rp=(r0-r1*r2)
rp=rp/(sqrt(1-r1^2)*sqrt(1-r2^2))
rp=approx(rp)
//pCor(rp,N)(3)▶p
//df,rxy,p2,rxz,p2,ryz,p2,rxy.z
df,r0,[pr0],r1,[pr1],r2,[pr2],rp
END;
#end
// 
