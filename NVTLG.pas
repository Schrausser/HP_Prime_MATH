//NVTLG(z[crit],tail[1/2])/D.G.SCHRAUSSER/2025
//e.g.NVTLG(1.96,2)
#cas
NVTLG(Z,S):=
BEGIN
"Y=(1/√(2*π))*e^((-1/2)*(X)^2)"▶V9
"Y<(1/√(2*π))*e^((-1/2)*(X)^2) AND Y>0 AND X<C"▶V8
NORMALD_CDF(Z)▶P;
IF S=2 THEN
"Y<(1/√(2*π))*e^((-1/2)*(X)^2) AND Y>0 AND X<C AND X>−C"▶V8
P=P-(1-P);
END;
C=Z;
STARTAPP("Erweiterte_Grafiken");
STARTVIEW(1);
//p-value
RETURN(P);
END;
#end
//
