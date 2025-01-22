//FVTLG(F,df1,df2)/D.G.SCHRAUSSER/2022
//e.g.FVTLG(2,3,10)[AdvancedGraphing]
#cas
FVTLG(F,A,B):=
BEGIN
F▶X
CAS(Gamma((A+B)/2))▶H
CAS(Gamma(A/2))▶D
CAS(Gamma(B/2))▶E
CAS(H/(D*E))▶C
CAS((X,Y)->Y=C*((A/B)^(A/2)*X^((A/2)-1)*(1+(A/B)*X)^(−(((A+B)/2)))) AND X>0▶V2)
CAS((X,Y)->Y<C*((A/B)^(A/2)*X^((A/2)-1)*(1+(A/B)*X)^(−(((A+B)/2)))) AND Y>0 AND X<F AND X>0▶V1)
FISHER_CDF(A,B,X)▶P
STARTAPP("Erweiterte_Grafiken")
STARTVIEW(1)
RETURN(P);
END;
#end 
//
