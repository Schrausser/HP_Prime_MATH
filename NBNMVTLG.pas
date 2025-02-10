//NBNMVTLG(k,p[e],r,n)/D.G.SCHRAUSSER/2025
//e.g.NBNMVTLG(1,0.2,8,10)
#cas
NBNMVTLG(K,P,R,N):=
BEGIN
B=0
FOR I FROM 0 TO R-K DO
 ((K+I-1)!/(I!*(K(I)-1)!))*P^K*(1-P)^I▶L4(I+1)
 B=B+L4(I+1)
END
D7=L4;L4={}
FOR I FROM 0 TO N-1 DO
 ((K+I-1)!/(I!*(K-1)!))*P^K*(1-P)^I▶L5(I+1)
END
D8=L5;L5={};
STARTAPP("Statistiken_1_Var");
STARTVIEW(1);
"D7"▶H3(1);5▶H3(3);
"D8"▶H4(1);5▶H4(3);
//p
RETURN(B);
END;
#end 
//
