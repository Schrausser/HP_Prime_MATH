//PRMDAT(rows n, cols k)/D.G.SCHRAUSSER/2025
//e.g.PRMDAT(720,6)
#cas
PRMDAT(N,K):=
BEGIN
//L3 provided
FOR J FROM 1 TO N DO
FOR I FROM 1 TO K DO
L3(M1(J,I))▶M2(J,I)
END;
END;
END;
#end
//
