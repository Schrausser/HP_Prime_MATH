//C2V(k[2..5])//D.G.SCHRAUSSER/2025
//e.g.C2V(3)
//from L1()..L5() to L6()(k)
#cas
C2V(K):=
BEGIN
size(L1)▶N
{}▶L0
IF K<6 THEN
FOR I FROM 1 TO N DO
L1(I)▶L0(1) 
L2(I)▶L0(2)
IF K>2 THEN L3(I)▶L0(3) END;
IF K>3 THEN L4(I)▶L0(4) END;
IF K>4 THEN L5(I)▶L0(5) END;
//
L0▶L6(I)
END;
END;
L6
END;
#end
//
