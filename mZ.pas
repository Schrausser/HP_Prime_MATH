//mZ()/D.G.SCHRAUSSER/2025
//Averaged Fisher-Z, mean r/[ZCor]
#cas
mZ():=
BEGIN
//L1(N)(2) provided
size(L1)▶N
FOR I FROM 1 TO N DO
ZCor(L1(I,1),L1(I,2))(1)▶L3
L3(1)▶L2(I)
END;
Σ((L1(I,2)-3)*L2(I),I,1,N)/Σ(L1(I,2)-3,I,1,N)▶L3(1)
L3(2):=(e^(2*L3(1))-1)/(e^(2*L3(1))+1)
//n,_Z,_r
N,L3
END;
//
