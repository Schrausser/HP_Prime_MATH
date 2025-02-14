//NVXY(correlation r,a1,b1,a2,b2,dz1,dz2)/D.G.SCHRAUSSER/2025
//Volume integral ∬dz1dz2 of the bivariate normal distribution f(z1,z2)
//e.g.NVXY(0,-5,5,-5,5,0.1,0.1)
#cas
NVXY(R,XA,XB,YA,YB,DX,DY):=
BEGIN
0▶P
FOR X FROM XA TO XB STEP DX DO
FOR Y FROM YA TO YB STEP DY DO
P=P+(1/(2*π*sqrt(1-R^2)))*e^((-1/(2*(1-R^2)))*(X^2-2*R*X*Y+Y^2))
END;
END;
P*D^2
END
#end
//
