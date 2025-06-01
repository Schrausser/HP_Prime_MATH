# HP_Prime_MATH: Functions
Dietmar G. Schrausser, 2025

<br>

### Correlation

<br>

#### [`KOR`|`IC_M`] [`rxy`|`RED`|`tr`|`TRW`|`pRW`|`pRWx`] [`E01`] Pearson product-moment correlation coefficient $r_{xy}$

---

$$r_{xy}=\frac{\sigma_{xy}^2}{\sigma_x\cdot \sigma_y},$$

$$\sigma^2_{xy}=\frac{\sum_{i=1}^n{(x_i-\overline{x})\cdot(y_i-\overline{y})}}{n}$$

with

$$t_{(df)}=\frac{r\cdot\sqrt{n-2}}{\sqrt{1-r^2}}$$

where

$r^2$ = coefficient of determination, redundancy $det%=r^2\cdot100$  
$\sigma^2_{xy}$ = covariance of $x$ and $y$  
$df$ = $n-2$  

<br>

#### [`RHO`] Spearman's $\rho$

---

Equivalent to the product moment correlation when *rank* values ​​are present.

$$r_s=\rho=1-\frac{6\cdot\sum_{i=1}^n{d_i^2}}{n\cdot(n^2-2)}$$

with

$$t_{(df)}=\frac{\rho\cdot\sqrt{n-2}}{\sqrt{1-\rho^2}};n\ge30$$

where

$d_i$ = rank difference of $x_i$ and $y_i$  
$df$ = $n-2$  

<br>

#### [`TAU`] Kendall's tau $\tau_a$

---

Without adjustment for *ties*.

$$\tau_a=1-\frac{2\cdot n_d}{0.5\cdot n\cdot(n-1)},$$

with 

$$z=3\cdot\tau_a\cdot\frac{\sqrt{n\cdot(n-1)}}{\sqrt{2\cdot(2\cdot n+5)}};n\gt 10$$

alternatively

$$z=\frac{n_c-n_d}{\sqrt{\frac{1}{18}\cdot n\cdot(n-1)\cdot(2\cdot n+5)}}$$

where

$n$ = Total Number of pairs  
$n_d$ = Number of discordant pairs  
$n_c$ = Number of concordant pairs, with $n_c=\binom{n}{2}-n_d$ 

<br>

#### [`DELTA2`] Somers' *D*

---

For *binary* data [0,1].

$$D_{YX}=\frac{n_{1,1}}{n}-\frac{n_{1,0}}{n}$$

where

$n$ = Total Number of pairs  
$n_{1,1}$ = Number of pairs with $Y=1, X=1$  
$n_{1,0}$ = Number of pairs with $Y=1, X=0$  

<br>

#### [`rpbis`] Point biserial correlation coefficient $r_{pb}$

---

Also point *biseral*.

$$r_{pb}=\frac{\overline{x}_1-\overline{x}_0}{\sigma_x}\cdot\sqrt{\frac{n_1\cdot n_2}{n^2}}$$

with

$$t_{(df)}=\frac{r_{pb}\cdot\sqrt{n-2}}{\sqrt{1-r_{pb}^2}}$$

where

$df$ = $n-2$  

<br>

#### [`rbis`|`srbis`|`zrbis`|`prbis`] Biserial correlation coefficient $r_{bis}$

---

$$r_{bis}=\frac{\overline{x}_1-\overline{x}_0}{\sigma_x}\cdot\frac{n_1\cdot n_2}{\vartheta\cdot n^2}$$

with

$$z=\frac{r_{bis}}{\sigma_{r_{bis}}},$$

$$\sigma_{r_{bis}}=\frac{\sqrt{n_1\cdot n_2}}{\vartheta\cdot n\cdot\sqrt{n}}$$

where

$\vartheta=\frac{1}{\sqrt{2\cdot\pi}}\cdot e^{-\frac{F(p=\frac{n_0}{n})^2}{2}}$  

<br>

#### [`rbisR`|`U_1`|`U_2`|`zrbisR`|`prbisR`] Rank biserial correlation coefficient $r_{bisR}$

---

Also rank *biseral* correlation, corresponds to the *effect size* for the *Mann–Whitney* $U$-test.

$$r_{bisR}=\frac{2}{n}\cdot(\overline{i}_1-\overline{i}_2)$$

with

$$z=\frac{U-n_1\cdot\frac{n_2}{2}}{\sqrt{\frac{n_1\cdot n_2\cdot(n+1)}{12}}},$$

where

$U = n_1\cdot n_2 +\frac{n_1^2+n_1}{2}  – \sum_{i=1}^{n_1}x_i$

<br>

#### [`PHC`] [`PHI`|`xPHI`|`pPHI`] Phi coefficient $\Phi$

---

$$\Phi=\frac{a\cdot d-b\cdot c}{\sqrt{(a+c)\cdot(b+d)\cdot(a+b)\cdot(c+d)}}$$

with

$$\chi^2_{(df)}=n\cdot\Phi^2$$

where

$df=1$  

<br>

#### [`PHC`] [`rtet`|`srtet`|`prtet`] Tetrachoric correlation $r_{tet}$

---

*Proposed* approximate algorithm.

$$r_{tet}=\cos\frac{\pi}{1+\sqrt{\frac{b\cdot c}{a\cdot d}}}$$

with

$$z=\frac{r_{tet}}{\sigma_{r_{tet}}},$$

$$\sigma_{r_{tet}}=\sqrt{\frac{\frac{a+b}{n}\cdot\frac{a+c}{n}\cdot\frac{c+d}{n}\cdot\frac{b+d}{n}}{n}}\cdot\frac{1}{\vartheta_x\cdot \vartheta_y}$$

where

$\vartheta_x=\frac{1}{\sqrt{2\cdot\pi}}\cdot e^{-\frac{F(p=\frac{c+d}{n})^2}{2}}$  
$\vartheta_y=\frac{1}{\sqrt{2\cdot\pi}}\cdot e^{-\frac{F(p=\frac{b+d}{n})^2}{2}}$  

<br>

#### [`PKR`] [`rxy_z`|`zrxy_z`|`prxy_z`|`ry_xz`]  Partial correlation $r_{xy\cdot z}$

---

$$r_{xy \cdot z}=\frac{r_{xy}-r_{xz}\cdot r_{yz}}{\sqrt{1-r_{xz}^2}\cdot \sqrt{1-r_{yz}^2}}$$

with

$$z=Z_{r_{xy\cdot z}}\cdot\sqrt{n-2}$$

where

$r_{y(x \cdot z)}=\frac{r_{xy}-r_{xz}\cdot r_{yz}}{\sqrt{1-r_{xz}^2}}$, semi partial correlation

<br>

#### [`ZCor`] [`Zr`|`rZ`] Fisher-Z transformation

---

$$Z=\frac{1}{2}\cdot \ln\frac{1+r}{1-r}$$

with

$$z=\frac{Z}{\sqrt{\frac{1}{n-3}}}$$

and 

$$r_Z=\frac{e^{2\cdot Z}-1}{e^{2\cdot Z}+1}$$

<br>

#### [`Zrr`|`prr`] Fisher-Z difference, Cohen's $q$

---

$$\theta=d_Z=Z_{r_1}-Z_{r_2}$$

with

$$z=\frac{d_Z}{\sqrt{\frac{1}{n_1-3}+\frac{1}{n_2-3}}}$$

<br>

#### [`mZ`|`mr`] Averaged Fisher-Z

---

$$\overline Z=\frac{\sum_{i=1}^k{(n_i-3)}\cdot Z_i}{\sum_{i=1}^k{(n_i-3)}}$$

<br>

#### [`MCORR2`] [`MCORR`|`SCR`|`Cf2`|`FMCORR`|`pMCORR`] Coefficient of multiple correlation $R_{c,12}$, Cohen's $f^2$

---

$$R_{c,12}=\sqrt{\frac{r_{1c}^2+r_{2c}^2-2\cdot r_{12}\cdot r_{1c}\cdot r_{2c}}{1-r_{12}^2}},$$

$$\hat R_{c,12}^2=1-\frac{n-3}{n-k-2}\cdot \biggl[(1-R_{c,12}^2)+\frac{2}{n-k}\cdot(1-R_{c,12}^2)^2\biggr];k=2$$

with

$$f^2=\frac{R_{c,12}^2}{1-R_{c,12}^2},$$

$$F_{(3,df_2)}=\frac{R_{c,12}^2\cdot(n-4)}{(1-R_{c,12}^2)\cdot 3}$$

where

$f^2$ = effect size for multiple regression.  
$df_2 = n-4$  

<br>
<br>

### Exposure

<br>

#### [`Ev`|`TEv`|`AEv`] [`E03`] Exposure value $Ev$

---

$$Ev=\log2\frac{{Av}^2}{Tv^{-1}}=\frac{\log(Tv\cdot Av^2)}{\log(2)}$$

hence

$$Tv=\frac{2^{Ev}}{Av^2},$$

$$Av=\frac{\sqrt{2^{Ev}\cdot Tv}}{Tv}$$

where

$Tv$ = time value with $Tv=s^{-1}$  
$Av$= aperture value $f$

<br>

#### [`AvTv`] Aperture $Av$ for time $Tv$ with given $Ev$

---

$$Av_{Tv}=Av_{Tv_0}\cdot a_{Tv}$$

with

$$a_{Tv}=2^{\frac{1}{2}\cdot\log2\frac{Tv_0}{Tv}}$$

$$=e^{\frac{1}{2}\cdot\log\frac{Tv_0}{Tv}}$$

where

$Tv$ = time value with $Tv=s^{-1}$  
$Tv_0$ = initial time value with $Tv_0=s^{-1}$  
$Av$= aperture value $f$

<br>

#### [`AvS`] [`E03`] Aperture $Av$ for speed $S$ with given $Ev$

---

$$Av_S=Av_{S_0}\cdot a_{S}$$

with

$$a_S=2^{\frac{1}{2}\cdot\log2\frac{S}{S_0}}$$

$$=e^{\frac{1}{2}\cdot\log\frac{S}{S_0}}$$

where

$S$ = arithmetic speed $ISO$  
$S_0$ = initial arithmetic speed $ISO$  
$Av$= aperture value $f$

<br>

#### [`AvTvk`] Aperture $Av$ shift from time $Tv$ in steps $k$

---
$$Tv_{n-k}=Tv_n\cdot 2^k,Tv_{n+k}=\frac{Tv_n}{2^k}$$

with

$$Av=Av_0\cdot\sqrt2^k$$

where

$Av_0$ = initial aperture value

<br>

#### [`AvSk`] Aperture $Av$ shift from speed $S$ in steps $k$

---

$$S_{n+k}=S_n\cdot \sqrt{2}^k,S_{n-k}=\frac{S_n}{\sqrt{2}^k}$$

with

$$Av=Av_0\cdot\sqrt[]2^k$$

where

$Av_0$ = initial aperture value

<br>

#### [`ISOL`|`ISOA`] Speed $S$ in  logarithmic  $ISO°$ or arithmetic $ISO$ conversion

---

$$S°=10\cdot\log10(S)+1=\frac{10\cdot\log{(S)}}{\log{(10)}}+1,$$

$$S=10^{\frac{S°-1}{10}}$$

<br>
<br>

### Integration, $\pi$ and $\Gamma$

<br>

#### [`F01`|`F05`] Circular function, $\pi$

---

Weierstraß describes $\frac{\pi}{2}=\int_0^{\infty}\frac{1}{1-x^2}dx$, which *may* be less heuristic.

$$f(x)=\sqrt{1-(\frac{x-b}{a})^2}\cdot a+c$$

with

$$F(x)=\frac{\pi}{2}=\int_{-1}^1f(x)dx;a=1,b=c=0$$

<br>

#### [`F01Z`] Spherical functions, $\pi$

---

$$f_1(x,y)=\sqrt{(1-x^2)+(1-y^2)}$$

with

$$F_1(x,y)=\frac{\sqrt{2}\cdot8\cdot\pi}{3}=2\cdot\iint_{-\sqrt{2}}^{\sqrt{2}}f_1(x,y)dxdy$$

where

$d=2\cdot\sqrt{2}$  
$\pi=\frac{3\cdot F_1(x,y)}{8\cdot\sqrt{2}}$  
$O=8\cdot\pi$  

$$f_2(x,y)=\sqrt{1-x^2-y^2}$$

with

$$F_2(x,y)=\frac{4\cdot\pi}{3}=2\cdot\iint_{-1}^{1}f_2(x,y)dxdy$$

where

$d=2$  
$\pi=\frac{3\cdot F_2(x,y)}{4}$  
$O=4\cdot\pi$  

$$f_3(x,y)=\sqrt{(x-x^2)+(y-y^2)}$$

with

$$F_3(x,y)=\frac{\sqrt{2}\cdot\pi}{3}=2\cdot\iint_{1-\sqrt{\frac{1}{2}}-\frac{1}{2}}^{1+\sqrt{\frac{1}{2}}-\frac{1}{2}}f_3(x,y)dxdy$$

where

$d=\sqrt(2)$  
$\pi=\frac{3\cdot F_3(x,y)}{\sqrt{2}}$  
$O=\pi$  

<br>

#### [`F04`|`F01Z`] Gamma function, $\Gamma$

---

$$f(x,t)=\vartheta_\Gamma=t^{x-1}\cdot e^t$$

with

$$F(x,t)=\Gamma_x=\int_{0}^{\infty}f(x,t) dt+c,$$
$$F'(x)=\frac{\partial \Gamma}{\partial x}$$

<br>
<br>

### Distribution

<br>

#### [`Q01_`] [`ZWERT`|`zVAL`|`zVALp`] Standardizing, $z$-values

---

$$z=\frac{a-\overline x_x}{\sigma_x},$$

$$\zeta=z'=\frac{a-\overline x_x}{\hat\sigma_x}$$

where

$z'$ = estimated population z-values

<br>

#### [`npz`] Quantity proportion of $a$ at $N$, $n_{^\ge p}$

---

$$n_{^\ge p}=(1-p_{{\frac{a-\overline x}{\sigma}}})\cdot N$$

where

$a$ = test value  
$N$ = number of cases, population  

<br>

#### [`AMG`] Weighted arithmetic mean $\ddot{\overline x}$

---

$$\ddot{\overline x}=\frac{\sum_{i=1}^k{\overline x_i\cdot n_i}}{n}$$

where

<br>

#### [`Q01_`|`AMG`|`GM_`] Geometric mean $\dot x$

---

$$\dot x=\sqrt[n]{\prod_{i=1}^n{x_i}},$$

$$\ddot{\dot x}=\sqrt[\sum_{i=1}^k{n_i}]{\prod_{i=1}^k{\dot x_i}^{n_i}}$$

<br>

#### [`Q01_`|`AMG`|`HM_`] Harmonic mean $\overline{\overline x}$

---

$$\overline{\overline x}=H=\frac{n}{\sum_{i=1}^n{x_i^{-1}}},$$

$$\ddot{\overline{\overline x}}=\frac{\sum_{i=1}^k{n_i}}{\sum_{i=1}^k\frac{n_i}{\overline{\overline x}_i}}$$

<br>

#### [`Q01_`] Coefficient of variation $\omega$

---

$$\omega=\frac{\sigma}{\overline x};\overline x\gt0$$

<br>

#### [`MDN`] Mean dispersion $\overline d$

---

$$\overline d=\frac{\sum_{i=1}^n{|x_i-\overline x|}}{\sum_{i=1}^n1};x_i\ne \overline x,$$

$$\hat{\overline \delta}=\sigma\cdot\zeta\cdot\sqrt{\frac{n}{n-1}}=\hat\sigma\cdot\zeta$$

with

$$\hat\sigma_{\overline d}=\sigma\cdot\frac{1}{2\cdot\zeta\cdot\sqrt{n}}$$

where

$\zeta_{\overline d}=\overline\delta=\frac{4}{5}$

<br>

#### [`NVTLG`] [`E01`|`F02`|`F03`] Standard normal distribution $f(x=z)$

---

$$f(z)=\vartheta=\frac{1}{\sqrt{2\cdot\pi}}\cdot e^{-\frac{z^2}{2}}$$

with

$$F(z)=p=\int_{-\infty}^z{f(z)dz},$$
$$f'(z)=\frac{\partial f(z)}{\partial z}$$

<br>

#### [`NVXY`] [`F01Z`] Bivariate normal distribution $f(z_1,z_2)$

---

$$f(z_1,z_2)=\vartheta=\frac{1}{2\cdot\pi\cdot\sqrt{1-r^2}}\cdot e^{\frac{-1}{2\cdot(1-r^2)}\cdot(z_1^2-2\cdot r\cdot z_1\cdot z_2+z_2^2)}$$

$$F(z_1,z_2)=1=\iint_{-\infty}^\infty f(z_1,z_2)dz_1dz_2$$

where

$r$ = correlation $r_{(z_1,z_2)}$

<br>

#### [`tVTLG`|`F06_`] [`F02`|`F06`|`F03Z`] Student's $t$ distribution $f(x=t)$

---

$$f(t)=\vartheta=\frac{\Gamma_\frac{df+1}{2}}{\Gamma_{\frac{df}{2}}}\cdot(df\cdot \pi)^{-\frac{1}{2}}\cdot(1+\frac{t^2}{df})^{-\frac{df+1}{2}}$$

with

$$F(t,df)=p=\int_{-\infty}^t{f(t)dt}$$

where

$\Gamma_x=\int_{0}^\infty{y^{x-1}\cdot e^{-y}dy+c}$

<br>

#### [`ch2VTLG`|`F07_`] [`F02`|`F07`|`F03Z`] $\chi^2$ distribution $f(x=\chi^2)$

---

$$f(\chi^2)=\vartheta=\frac{1}{2^\frac{df}{2}\cdot\Gamma_\frac{df}{2}}\cdot{\chi^2}^{\frac{df}{2}-1}\cdot e^{-\frac{\chi^2}{2}}$$

with

$$F(\chi^2,df)=1-p^{\alpha2}=\int_{0}^{\chi^2}{f(\chi^2)d\chi^2}$$

where

$\Gamma_x=\int_{0}^\infty{y^{x-1}\cdot e^{-y}dy+c}$

<br>

#### [`FVTLG`] [`F02`|`F03Z`] $F$ distribution $f(x=F)$

---

$$f(F)=\vartheta=\frac{\Gamma_{\frac{df_1+df_2}{2}}}{\Gamma_{\frac{df_1}{2}}\cdot\Gamma_{\frac{df_2}{2}}}\cdot(\frac{df_1}{df_2})^{\frac{df_1}{2}}\cdot F^{\frac{df_1}{2}-1}\cdot(1+\frac{df_1}{df_2}\cdot F)^{-\frac{df_1+df_2}{2}}$$

with

$$F(F,df_1,df_2)=1-p^{\alpha2}=\int_{0}^{F}{f(F)dF}$$

where

$\Gamma_x=\int_{0}^\infty{y^{x-1}\cdot e^{-y}dy+c}$

<br>

#### [`Q02_`] Third standardized moment, skewness  $\alpha_3$

---

$$\alpha_3=\frac{\sum_{i=1}^n{z_i^3}}{n},$$

$$\hat\alpha_3=\frac{n\cdot\sum_{i=1}^n{(x_i-\overline x)^3}}{(n-1)\cdot(n-2)\cdot\hat\sigma^3}$$

with

$$z=\frac{\alpha_3}{\sqrt{\frac{6}{n}}}$$

<br>

#### [`Q02_`] Fourth standardized moment, excess kurtosis $\alpha_4$

---

$$\alpha_4=\frac{\sum_{i=1}^n{z_i^4}}{n}-3,$$

$$\hat\alpha_4=\frac{n\cdot(n+1)\cdot\sum_{i=1}^n{(x_i-\overline x)^4}-3\cdot\sum_{i=1}^n{(x_i-\overline x)^2}\cdot\sum_{i=1}^n{(x_i-\overline x)^2\cdot(n-1)}}{(n-1)\cdot(n-2)\cdot(n-3)\cdot\hat\sigma^4}$$

with

$$z=\frac{\alpha_4}{2\cdot\sqrt{\frac{6}{n}}}$$ 

<br>

#### [`SMG`] [`CIx`] Estimated standard error of mean $\hat\sigma_{\overline x}$, confidence interval $CI_p$

---

$$\hat\sigma_{\overline x}=\sqrt{\frac{\sigma\cdot\frac{n}{n-1}}{n}}$$

with

$$CI_p=\overline x\pm t_{(1-\frac{1-p}{2},n-1)}\cdot\hat\sigma_{\overline x},$$

$$CI_p=\theta\pm t_{(1-\frac{1-p}{2},df)}\cdot\hat\sigma_{\theta}$$

where

$p$ = probability  
$n$ = number of cases  

<br>

#### [`CIXY`] [`CIr`] [`E01`] Standard error of prediction $\sigma_{\hat yx}$ , confidence interval $CI_p$

---

$$\sigma_{\hat yx}=\sigma_y\cdot\sqrt{1-r^2}$$

with

$$CI_p=\hat y_x\pm z_{(1-\frac{1-p}{2})}\cdot\sigma_{\hat yx}$$

$p$ = probability  
$r$ = correlation  
$\hat y$ = predicted value $y$  

<br>

#### [`EPSILON`] [`EFG`|`EFR`] [`E01`] Effect size $\epsilon$, Cohen's $d$

---

$$\epsilon=d=\frac{\mu_1-\mu_0}{\hat\sigma},$$

$$d_v=\frac{d}{\sqrt{1-r}}$$

with

$$\overline x_{crit}^\beta=\mu_1±t_{(p_{crit},df)}\cdot\hat\sigma_{\overline x},$$

$$t_{(df)}^{\alpha}=\frac{\overline x_{0_1}-\mu_0}{\hat\sigma_{\overline x}},$$

$$t_{(df)}^{\beta}=\frac{\overline x_{0_1}-\mu_1}{\hat\sigma_{\overline x}}$$

where

$d_v$ = d for paired samples  
$r$ = correlation  
Power = $p^{1-\beta}=1-p^{\beta}$  

<br>

#### [`EPSILON2`] Optimal effect size $\epsilon_p$

---

$$\epsilon_p=\sqrt{\frac{{(2\cdot t_{(p_{crit},df)}})^2}{n}},$$

<br>

#### [`EPSILON2`] Optimal alpha level

---

$$t^\alpha _{(opt,df)}=\frac{\sqrt{\epsilon^2\cdot n}}{2}$$

<br>

#### [`TKV`] [`tTKV`|`pTKV`] Variance difference $t$-test

---

For paired samples $(x_1|x_2)$.

$$\theta=d_{\sigma ^2}=\sigma_1^2-\sigma_2^2$$

with

$$t_{(df)}=d_{\sigma^2}\cdot\frac{\sqrt{n-2}}{2\cdot\sqrt{\sigma_1^2\cdot\sigma_2^2\cdot(1-r^2)}}$$

where

$df$ = $n-2$  

<br>

#### [`TV_`] [`tTV`|`pTV`] Paired 2-sample $t$-test

---

$$\theta=\overline x_d=\frac{\sum_{i=1}^n{x_{(i,1)}-x_{(i,2)}}}{n}$$

with

$$t_{(df)}=\frac{\overline x_d}{\hat\sigma_{\overline x_d}},$$

$$\hat\sigma_{\overline x_d}=\sqrt{{\frac{\sum_{i=1}^n{(x_{(i,1)}-x_{(i,2)})^2}-\frac{(\sum_{i=1}^n{x_{(i,1)}-x_{(i,2)}})^2}{n}}{n-1}}}\cdot \frac{1}{\sqrt{n}}$$

where

$\overline x_d$ = mean of the differences ​​of $x_1$ and $x_2$ values  
$df$ = $n-1$  

<br>

#### [`TU_`] [`tTU_`|`pTU_`|`tTUx`|`pTUx`] Unpaired 2-sample $t$-test

---

$$\theta=d_\overline{x}=\overline x_1-\overline x_2$$

with

$$t_{(df)}=\frac{d_\overline{x}}{\hat\sigma_{d_{\overline x}}},$$

$$\hat\sigma_{d_{\overline x}}=\sqrt{\frac{\sum_{i=1}^{n_1}{(x_{(i,1)}-\overline x_1)^2}+\sum_{i=1}^{n_2}{(x_{(i,2)}-\overline x_2)^2}}{n-2}}\cdot\sqrt{\frac{1}{n_1}+\frac{1}{n_2}}$$

where

$d_{\overline x}$ = difference of the means $\overline x_1$ and $\overline x_2$  
$df$ = $n_1+n_2=n-2$  

<br>

#### [`TT_`] [`tTT_`|`pTT_`] One-sample $t$-test

---

$$\theta=d_{\overline x y}=\overline x-y$$

with

$$t_{(df)}=\frac{d_{\overline x y}}{\sqrt{\frac{\sigma^2}{n-1}}}$$

where

$d_{\overline x y}$ = difference between sample mean $\overline x$ and test value $y$  
$df$ = $n-1$  

<br>

#### [`ABT1`] [`x2F`|`p2F`|`zBN`|`pzBN`] $\chi^2$ test for independence

---

$$\chi^2=\sum_{i=1}^n{\frac{(f_{e_i}-f_{b_i})^2}{f_{b_i}}}$$

with

$$z=\frac{b-\frac{b+c}{2}}{\sqrt{\frac{b+c}{4}}}$$

<br>

#### [`VFCH`] [`x4F`|`p4F`|`x4FY`|`p4FY`|`z4F`|`pz4F`] 2 × 2 $\chi^2$ test for independence

---

$$\chi^2=\frac{N\cdot (a\cdot d-b\cdot c)^2}{(a+b)\cdot(c+d)\cdot(a+c)\cdot(b+d)},$$

$$\chi^2_{Yates}=\frac{N\cdot (|a\cdot d-b\cdot c|\cdot\frac{N}{2})^2}{(a+b)\cdot(c+d)\cdot(a+c)\cdot(b+d)};4\lt f_e\lt7$$

with

$$z=\frac{d-N\cdot P_d}{\sqrt{N\cdot P_d\cdot(1-P_d)-N\cdot (N-1)\cdot P_d\cdot(P_d-\hat P_d)}}$$

where

$f_e$ = expected frequency  
$P_d=\frac{(d+b)\cdot(c+d)}{N^2}$  
$\hat P_d=\frac{(d+b-1)\cdot(c+d-1)}{(N-1)^2}$  
$df$=1  

<br>

#### [`VFCH`] [`xMN`|`pMN`|`xMNY`|`pMNY`] McNemar's test for paired  2 × 2 contingency tables with dichotomous trait

---

$$\chi^2=\frac{(b-c)^2}{b+c},$$

$$\chi^2=\frac{(|b-c|-\frac{1}{2})^2}{b+c};20\lt (b+c)\lt 30$$

<br>

### Probability

<br>

#### [`Ch`|`ChA`|`ChB`] Arcsine transformation, Cohen's $h$

---

$$\theta=p_1-p_2,$$

$$h=2\cdot\arcsin{\sqrt{p_1}}-2\cdot\arcsin{\sqrt{p_2}}$$

with

$$p_1=\sin({\frac{2\cdot\arcsin\sqrt{p_2}+h}{2}})^2,$$

$$p_2=-\sin({\frac{-2\cdot\arcsin\sqrt{p_1}+h}{2}})^2$$

where

probabilities = $p_1$, $p_2$

<br>

#### [`ABT1`] [`ADDP`] [`E01`] Additive probability for independent events $^u p(\cup_n A)$

---

Corresponds to the *geometric distribution* $f(X\le r|p)$.

$$^u p(\cup_n A)=1-(1-pA)^n$$

where

$n$ = number of events A  
$pA$ = probability of event A  

<br>

#### [`GMVTLG`] Geometric distribution $f(X\le r|p)$

---

Corresponds to the *additive* probability $^u p(\cup_n A)$.

$$f(X=r|p)=P_n=p\cdot q^r$$

with

$$f(X\le r|p)=p_n=\sum_{i=0}^r{p\cdot q^i}$$

where

$p$ = probability of event  
$r+1 = n$ = number of events  

<br>

#### [`NBNMVTLG`] [`NBINOM`] [`E01`] Negative binomial distribution $f(X\le r|r,p)$

---

With $k=1$ it corresponds to the *geometric distribution* $f(X\le r|p)$ and the *additive* probability $^u p(\cup_n A)$.

$$f(X=r|r,p)=P_n=\frac{(k+r-1)!}{r!\cdot(k-1)!} \cdot p^k\cdot q^r$$

with

$$f(X\le r|r,p)=p_n=\sum_{i=0}^r{\frac{(k+i-1)!}{i!\cdot(k-1)!} \cdot p^k\cdot q^i}$$

where

$r+k=n$ = number of events  
$k$ = number of successes  

<br>

#### [`ABT1`] [`BINOM`|`zBN`|`pzBN`] [`E01`] Exact binomial test

---

$$f(X=b|b,c)=P0=\frac{(b+c)!}{b!\cdot c!}\cdot2^{-b}\cdot2^{-c}$$

with

$$f(X\le b|b,c)=p=p^{exact1}=\sum_{i=0}^b{\frac{(b+c)!}{i!\cdot(b+c-i)!}}\cdot2^{-i}\cdot2^{-(b+c-i)};p\le\frac{1}{2},$$

$$p^{exact1}=(1-p)+P0;p\gt\frac{1}{2}$$

also

$$z=\frac{b-\frac{b+c}{2}}{\sqrt{\frac{b+c}{4}}}$$

<br>

#### [`FX`] [`z4F`|`pz4F`] Exact hypergeometric 2 × 2 test

---

$$f(X=a|a,b,c,d)=P0=\frac{(a+b)!\cdot(c+d)!\cdot(a+c)!\cdot(b+d)!}{N!\cdot a!\cdot b!\cdot c!\cdot d!}$$

with

$$f(X\le a|a,b,c,d)=p^{exact1}=\sum_{i=1}^aPi;p\le\frac{1}{2},$$
$$f(X\ge a|a,b,c,d)=p^{exact1}=\sum_{i=a}^nPi;p\gt\frac{1}{2}$$

where

$Pi=\frac{(a+b)!\cdot(c+d)!\cdot(a+c)!\cdot(b+d)!}{N!\cdot i!\cdot (a+b-i)!\cdot (a+c-i)!\cdot (2\cdot c+d-a-i)!}$  

also

$$z=\frac{d-N\cdot P_d}{\sqrt{N\cdot P_d\cdot(1-P_d)-N\cdot (N-1)\cdot P_d\cdot(P_d-\hat P_d)}}$$

where

$P_d=\frac{(d+b)\cdot(c+d)}{N^2}$  
$\hat P_d=\frac{(d+b-1)\cdot(c+d-1)}{(N-1)^2}$  
$df$=1  

<br>

### Combinatorics

<br>

#### [`PRM2`] Permutation matrix $\mathbf{P_n}$

---

$n$ elements to $k=1$ class.

$$\mathbf{P_n}=\begin{bmatrix}p_1(x_1)&\cdots&p_1(x_n)\\\\\vdots&\ddots&\vdots\\\p_P(x_1)&\cdots&p_P(x_n)\end{bmatrix}$$

where

$P_n=n!$  

<br>

#### [`PRM5`] Variation matrix $\mathbf{ ^w V_2^m}$

---

For the *dependent* 2 sample design, $n=2$ elements to class $m$.

$$\mathbf{ ^w V_2^m}=\begin{bmatrix}v_1(x_1)&\cdots&v_1(x_m)\\\\\vdots&\ddots&\vdots\\\v_{^wV}(x_1)&\cdots&v_{^wV}(x_m)\end{bmatrix}$$

where

$^w V_2^m=2^m$  

<br>

#### [`PRM4`] Variation matrix $\mathbf{ ^w V_n^m}$

---

$n$ elements to class $m$.

$$\mathbf{ ^w V_n^m}=\begin{bmatrix}v_1(x_1)&\cdots&v_1(x_m)\\\\\vdots&\ddots&\vdots\\\v_{^wV}(x_1)&\cdots&v_{^wV}(x_m)\end{bmatrix}$$

where

$^w V_n^m=n^m;n\gt m$  

<br>

#### [`PRM3`] [`nk`] Permutation matrix $\mathbf{^w P_n^{(k_m,k_{n-m})}}$

---

$n$ elements to class $m$.

$$\mathbf{^w P_n^{(k_m,k_{m-n})}}=\begin{bmatrix}\begin{array}{ccc|ccc} p_1(x_{11})&\cdots&p_1(x_{k_1})&p_1(x_{12})&\cdots&p_1(x_{k_2})\\\\\vdots&\ddots&\vdots&\vdots&\ddots&\vdots\\\p_{^wP}(x_{11})&\cdots&p_{^wP}(x_{k_1})&p_{^wP}(x_{12})&\cdots&p_{^wP}(x_{k_2}) \end{array}\end{bmatrix}$$

where

$^wP_n^{(k_m,k_{n-m})}=\frac{n!}{\prod_{i=1}^2 k_i!};n\ge m$  

<br>
<br>

### Resampling

<br>

#### [`PV_`] Permutation test *P* for 2 paired samples $(x_1|x_2)$

---

Random sampling model, *systematic* permutation, $p$-value *not* randomized, variation matrix $\mathbf{ ^w V_2^m}$ required.

$$\Theta^1_1=\sum_{i=1}^n{x_{1_i}},\Theta^1_2=\sum_{i=1}^n{x_{2_i}},$$

$$\Theta^2=(\sum_{i=1}^n{x_{1_i}})^2+(\sum_{i=1}^n{x_{2_i}})^2$$

with

$$p^{exact}=\frac{\sum_{i=1}^{2^n}{1}}{2^n};\theta_i\ge \Theta$$

where

$\Theta^1_1, \Theta^1_2$ = One-tailed test values  
$\Theta^2$ = Two-tailed test value  

<br>

#### [`mPV_`] Randomized permutation test *mP* for 2 paired samples $(x_1|x_2)$

---

Random sampling model, $p$-value *not* randomized.

$$\Theta^1_1=\sum_{i=1}^n{x_{1_i}},\Theta^1_2=\sum_{i=1}^n{x_{2_i}},$$

$$\Theta^2=(\sum_{i=1}^n{x_{1_i}})^2+(\sum_{i=1}^n{x_{2_i}})^2$$

with

$$p=\frac{\sum_{i=1}^{M}{1}}{M};\theta_i\ge \Theta$$

where

$\Theta^1_1, \Theta^1_2$ = One-tailed test values  
$\Theta^2$ = Two-tailed test value  
$M$ = Simulation cycles over variations $^w V_2^m=2^n$  

<br>

#### [`PU_`] Permutation test *P* for 2 independent samples $(x|g)$

---

Random sampling model, *systematic* permutation, $p$-value *not* randomized, permutation matrix $\mathbf{^w P_n^{(k_m,k_{n-m})}}$ required.

$$\Theta^1_1=\sum_{i=1}^{n_1}{x_{g1_i}},\Theta^1_2=\sum_{i=1}^{n_2}{x_{g2_i}},$$

$$\Theta^2=|\overline x_{g1}-\overline x_{g2}|$$

with

$$p^{exact}=\frac{\sum_{i=1}^{\frac{n!}{n_1!\cdot n_2!}}{1}}{\frac{n!}{n_1!\cdot n_2!}};\theta_i\ge \Theta$$

where

$\Theta^1_1, \Theta^1_2$ = One-tailed test values  
$\Theta^2$ = Two-tailed test value  
$n=n_1+n_2$  

<br>

#### [`mPU_`] Randomized permutation test *mP* for 2 independent samples $(x|g)$

---

Random sampling model, $p$-value *not* randomized.

$$\Theta^1_1=\sum_{i=1}^{n_1}{x_{g1_i}},\Theta^1_2=\sum_{i=1}^{n_2}{x_{g2_i}},$$

$$\Theta^2=|\overline x_{g1}-\overline x_{g2}|$$

with

$$p=\frac{\sum_{i=1}^M{1}}{M};\theta_i\ge \Theta$$

where

$\Theta^1_1, \Theta^1_2$ = One-tailed test values  
$\Theta^2$ = Two-tailed test value  
$n=n_1+n_2$  
$M$ = Simulation cycles over permutations   $^wP_n^{(k_m,k_{n-m})}=\frac{n!}{n_1!\cdot n_2!}$  

<br>

#### [`BtU_`] Bootstrap test *Bt* for 2 independent samples $(x|g)$

---

$$\Theta^1_1=\sum_{i=1}^{n_1}{x_{g1_i}},\Theta^1_2=\sum_{i=1}^{n_2}{x_{g2_i}},$$

$$\Theta^2=|\overline x_{g1}-\overline x_{g2}|$$

with

$$p=\frac{\sum_{i=1}^B{1}}{B};\theta_i\ge \Theta$$

where

$\Theta^1_1, \Theta^1_2$ = One-tailed test values  
$\Theta^2$ = Two-tailed test value  
$n=n_1+n_2$  
$B$ = Simulation cycles over variations $^w V_n^m=n^n$  

<br>

### Complex plane

<br>

#### [`CPLX`|`CPLX2`] [`F02Z`] Geometric representation of complex numbers $z$ in the complex plane

---

*Argand diagram*.

$$z=\Re+\Im=x+iy,$$

$$|z|=r=\sqrt{x^2+y^2}$$

with

$$\varphi=\pi;x\lt0\wedge y=0,$$

$$\varphi=2\cdot\arctan{\frac{y}{\sqrt{x^2+y^2}+x}};y\ne0,$$

$$\varphi=0;x\gt0\wedge y=0$$

where

$r$ = amplitude  
$\varphi$ = phase, argument

<br>

#### [`CPLHX`] Graph of the complex function $z=\Re+\Im$

---

$$y_1=\Re \cdot x,$$

$$y_2=\Im,$$

$$y_3=\sqrt{(\Re\cdot x)^2+\Im^2},$$

$$y_4=\frac{\Im}{|\Im|}\cdot\frac{\pi}{2}-\arctan({\frac{\Re}{\Im}\cdot x})$$

