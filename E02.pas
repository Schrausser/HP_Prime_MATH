//E02()/D.G.SCHRAUSSER/2022
//Solve: Equations 2.0
//E1: Aperture value A for exposure value E and shutter speed T
//E2: Exposure value E for illuminance lux L and ISO I
//E3: Magnification M at focal length F
//E4: Angle of view W at focal length F
EXPORT E02()
BEGIN
"A=1/√(2^(-E)*T)"▶E1;
"E=LN((L*I/250))*(LN(2))^(-1)"▶E2;
"M=F/50"▶E3;
"W=-0.95908335982/(1-1.00293098572*e^(3.51450126836ᴇ−4*F))"▶E4;
""▶E5;
""▶E6;
""▶E7;
""▶E8;
""▶E9;
""▶E0;
"Solve: Equations 2.0"
END;
//
