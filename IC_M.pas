//IC_M_(n of variables k)/D.G.SCHRAUSSER/2025
//Intercorrelation matrix, Pearson correlation r
//e.g.IC_M(5)[pCor]
//M1:r
//M2:det%(r²×100)
//M3:t-value
//M4:2-tailed p
#cas
IC_M(K):=
BEGIN
//L1(n)(k) provided
{}▶L4
{}▶L5
{}▶L6
{}▶L7
{}▶L8
size(L1)▶N
FOR I FROM 1 TO K DO
FOR J FROM 1 TO K DO
MAKELIST({L1(X,I),L1(X,J)},X,1,N)▶L4
approx(correlation(L4))▶R125▶L5(I,J) //r
approx(pCor(R125,N)(3))▶L0;L0(1)▶L6(I,J) //p2
approx(pCor(R125,N)(1))▶L0;L0(1)▶L7(I,J) //t
approx(R125^2*100)▶L8(I,J) //det
END;
END;
L5▶M1
L8▶M2
L7▶M3
L6▶M4
//
END;
#end
//
