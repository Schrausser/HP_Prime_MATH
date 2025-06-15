//E04()/D.G.SCHRAUSSER/2025
//Solve: Equations 4.0
//E1: Astronomical unit A from meters M
//E2: Parsec P from astronomical unit A
//E3: Parsec P from parallax X in milliarcseconds mas
//E4: Light-year L from parsec P
//E5: Speed of light C from m/c M
//E6: Luminosity distance P from distance modulus M
//E7: Radius R at a given distance D with angular diameter V°
//E8: Illuminance in lux E from apparent magnitude M
EXPORT E04()
BEGIN
"A=M/149597870700"▶E1;
"P=(648000/π)*A"▶E2;
"P=1/(X/1000)"▶E3;
"L=P*3.26156"▶E4;
"C=299792458*M"▶E5;
"P=10^((M/5)+1)"▶E6;
"R=D*TAN(((π/180)*V/2))"▶E7;
"E=10^((-14.18-M)/2.5)"▶E8;
""▶E9;
""▶E0;
"Solve: Equations 4.0"
END;
// 
