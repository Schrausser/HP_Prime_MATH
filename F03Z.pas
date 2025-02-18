//F03Z()/D.G.SCHRAUSSER/2025
//Graph 3D: Equations 3.0
//FZ1:Student's-t surface, f(t,df),x[-4,4],y[1,10],z[0,0.5]
//FZ2:chi² surface, f(chi²,df), x[0,5],y[1,10],z[0,0.5]
//FZ3-6:F space, f(F,df2);df1={1,5,9,13},x[0,5],y[0,20],z[0,5]
EXPORT F03Z()
BEGIN
"(Gamma(((Y+1)/2))/Gamma((Y/2)))*(Y*π)^(-1/2)*(1+(X^2/Y))^(-(Y+1)/2)"▶FZ1;
"(1/(2^(Y/2)*Gamma((Y/2))))*X^((Y/2)-1)*e^(-X/2)"▶FZ2;
"(Gamma(((1+Y)/2))/(Gamma((1/2))*Gamma((1/2))))*(1/Y)^(1/2)*X^((1/2)-1)*(1+(1/Y)*X)^(-(1+Y)/2)"▶FZ3;
"(Gamma(((5+Y)/2))/(Gamma((5/2))*Gamma((5/2))))*(5/Y)^(5/2)*X^((5/2)-1)*(1+(5/Y)*X)^(-(5+Y)/2)"▶FZ4;
"(Gamma(((9+Y)/2))/(Gamma((9/2))*Gamma((9/2))))*(9/Y)^(9/2)*X^((9/2)-1)*(1+(9/Y)*X)^(-(9+Y)/2)"▶FZ5;
"(Gamma(((13+Y)/2))/(Gamma((13/2))*Gamma((13/2))))*(13/Y)^(13/2)*X^((13/2)-1)*(1+(13/Y)*X)^(-(13+Y)/2)"▶FZ6;
""▶FZ7;
""▶FZ8;
""▶FZ9;
""▶FZ0;
"Graph 3D: Equations 3.0"
END;
//
