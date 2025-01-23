//ZCor(correlation r,n)/D.G.SCHRAUSSER/2025
//e.g.ZCor(0.94,6)
#cas
ZCor(r,n):=
BEGIN
Z=0.5*ln(((1+r)/(1-r)))
sZ=√(1/(n-3))
zV=Z/sZ
Pz=NORMALD_CDF(zV)
P2=2*Pz
IF Pz>0.5 THEN
P2=2*(1-Pz)
END;
//Fisher-Z,sZ,z,p,1-p,p2
approx([Z,sZ],[zV],Pz,1-Pz,[P2])
END;
#end
//
