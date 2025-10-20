# HP_Prime_MATH: Manual
Dietmar G. Schrausser

<br>
<br>

## Introduction

<br>
<br>

Mathematical and statistical applications for *HP Prime* (s. HP Inc., [2017](https://www.hpcalc.org/details/7445); Schrausser, [2025](https://doi.org/10.5281/zenodo.14721085)). *Algorithms* are presented in context with the corresponding scope of application (s. Functions). *CAS* programs (1), HP Prime *User* functions (2) and functions for HP Prime *Applications* (3) are listed in alphabetical order (s. Source Codes), for a *comparison* to corresponding *Schrausser-MAT* functions (Schrausser, [2022a](https://www.academia.edu/81395688)) see Table 1. In addition to the source codes of the functions, *raw* data sets are provided for *correlation*- as well as *resampling*-methods (s. Data).

On *mathematical statistical* methods in general see e.g. Cox & Hinkley ([1974](https://doi.org/10.1201/b14832)), Bortz & Weber ([2005](https://doi.org/10.1007/b137571)), Lehmann & Romano ([2008](https://books.google.com/books?id=IlJE_9_e8UEC)) or Bortz & Schuster ([2010](https://doi.org/10.1007/978-3-642-12770-0)),  Schrausser ([2024a](https://doi.org/10.5281/zenodo.10969144)) provides a comprehensive overview of the most important *distribution functions* and corresponding *algorithms*. Introducing works on *resampling* methods are given by e.g. Good ([2006](https://www.amazon.com/Resampling-Methods-Practical-Guide-Analysis/dp/0817643869)) or Beasley & Rodgers ([2009](https://psycnet.apa.org/doi/10.4135/9780857020994.n16)), for *calculus* and *theory of functions* see e.g. Meyberg & Vachenauer ([2001a](https://doi.org/10.1007/978-3-642-56654-7), [b](https://doi.org/10.1007/978-3-642-56655-4)) or Remmert & Schumacher ([2002](https://doi.org/10.1007/978-3-642-56281-5)), on *complex numbers* in the *complex plane* see e.g. Burckel ([2021](https://doi.org/10.1007/978-1-0716-1965-0)) and Vince ([2021](https://doi.org/10.1007/978-1-4471-7509-4_4)).

For the history of *statistical inference* in general see e.g. Stigler ([1986](https://www.scirp.org/(S(351jmbntvnsjt1aadkposzje))/reference/ReferencesPapers.aspx?ReferenceID=1973131)) and Hald ([1990](https://onlinelibrary.wiley.com/doi/book/10.1002/0471725161), [1998](https://www.abebooks.com/History-Mathematical-Statistics-1750-1930-Wiley/31042381048/bd), [2003](https://www.wiley.com/en-us/A+History+of+Probability+and+Statistics+and+Their+Applications+before+1750-p-9780471725176), [2007](https://link.springer.com/book/10.1007/978-0-387-46409-1#bibliographic-information)), *historical foundations* of mathematics are thematized and discussed in e.g. Suter ([1887](https://doi.org/10.3931/e-rara-65095)), Heath ([1921a](https://archive.org/details/cu31924008704219), [b]([https://archive.org/details/historyofgreekma029268mbp/page/n5/mode/1up)), Boyer ([1968](https://archive.org/details/ahistoryofmathematicscarlbboyer1968_315_t)), Neugebauer ([1969](https://books.google.com/books?id=JVhTtVA2zr8C)), Ewald ([1996a](https://philpapers.org/rec/BRAFKT), [b](https://philpapers.org/rec/EWAFKT-4)), Katz ([2009](https://www.gettextbooks.com/isbn/9780321387004/)) or Merzbach & Boyer ([2011](https://books.google.com/books/about/A_History_of_Mathematics.html?id=bR9HAAAAQBAJ)), c.f. `paper.md`

<br>
<br>

## Functions

<br>
<br>

### Correlation

To measure the degree of a linear *relation* between variables,
Karl Pearson ([1904](https://openlibrary.org/books/OL24168960M)) was developing statistical techniques for biometry including the *correlation* and *regression* coefficients based on the works of Bravais ([1844](https://books.google.com/books?id=7g\_hAQAACAAJ)) and
 Galton ([1877](https://doi.org/10.1038/015492a0)) who introduced the symbol $r$, on the then designation of the term *reversion*.

*Factor analysis*, based on *multiple regression* and *matrix* calculation was first discussed by
Charles Edward Spearman ([1904](http://www.jstor.org/stable/1412159)), later the initial developed took place by Louis Leon Thurstone ([1931](https://doi.org/10.1037/h0069792), [1934](https://doi.org/10.1037/h0075959), [1935](https://archive.org/details/vectorsofmindmul010122mbp/page/n7/mode/1up); s. also Cattell, [1966](https://doi.org/10.1207/s15327906mbr0102\_10)). 

Table 1. Appropriate correlation coefficients; product-moment or Pearson correlation $r_{xy}$, Spearman's rank correlation coefficient *rho* $\rho$, biserial (or *biseral*) coefficients $r_{bis}$, $r_{pbis}$, $r_{bisR}$ and *phi* coefficient $\Phi$ at the corresponding scale levels, *interval i*, *ordinal o*, and *nominal n*.

`correlation.md`

<br>

#### [`KOR`|`IC_M`] [`rxy`|`RED`|`tr`|`TRW`|`pRW`|`pRWx`] [`E01`] Pearson product-moment correlation coefficient $r_{xy}$

---

See Pearson ([1904](https://openlibrary.org/books/OL24168960M), [1905](https://openlibrary.org/books/OL6555066M)).

$$r_{xy}=\frac{\sigma_{xy}^2}{\sigma_x\cdot \sigma_y},$$

$$\sigma^2_{xy}=\frac{\sum_{i=1}^n{(x_i-\overline{x})\cdot(y_i-\overline{y})}}{n}$$

with

$$t_{(df)}=\frac{r\cdot\sqrt{n-2}}{\sqrt{1-r^2}}$$

where

$r^2$ = coefficient of determination *det*, redundancy   $det%=r^2\cdot100$  
$\sigma^2_{xy}$ = covariance of $x$ and $y$  
$df$ = $n-2$  

<br>

#### [`RHO`] Spearman's $\rho$

---

Equivalent to the *product moment correlation* when *rank* values are present (s. Spearman, [1904](http://www.jstor.org/stable/1412159)).

$$r_s=\rho=1-\frac{6\cdot\sum_{i=1}^n{d_i^2}}{n\cdot(n^2-2)}$$

with

$$t_{(df)}=\frac{\rho\cdot\sqrt{n-2}}{\sqrt{1-\rho^2}};n\ge30$$

where

$d_i$ = rank difference of $x_i$ and $y_i$  
$df$ = $n-2$  

<br>

#### [`TAU`] Kendall's tau $\tau_a$

---

Without adjustment for *ties* (s. Kendall, [1938](http://www.jstor.org/stable/2332226)).

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

#### [`DELTA2`] Somers' $D$

---

For *binary* data [0,1] (s. Somers, [1962](http://www.jstor.org/stable/2090408)).

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

Pearson ([1909](http://www.jstor.org/stable/2345365)), see e.g. Tate ([1955](http://www.jstor.org/stable/2333437)),
also called *biseral*. 

$$r_{bis}=\frac{\overline{x}_1-\overline{x}_0}{\sigma_x}\cdot\frac{n_1\cdot n_2}{\vartheta\cdot n^2}$$

with

$$z=\frac{r_{bis}}{\sigma_{r_{bis}}},$$

$$\sigma_{r_{bis}}=\frac{\sqrt{n_1\cdot n_2}}{\vartheta\cdot n\cdot\sqrt{n}}$$

where

$\vartheta=\frac{1}{\sqrt{2\cdot\pi}}\cdot e^{-\frac{F(p=\frac{n_0}{n})^2}{2}}$  

<br>

#### [`rbisR`|`U_1`|`U_2`|`zrbisR`|`prbisR`] Rank biserial correlation coefficient $r_{bisR}$

---

Also rank *biseral* correlation, corresponds to the *effect size* for the *Mann–Whitney* $U$ *test* (Mann & Whitney, [1947](https://doi.org/10.1214/aoms/1177730491)).

$$r_{bisR}=\frac{2}{n}\cdot(\overline{i}_1-\overline{i}_2)$$

with

$$z=\frac{U-n_1\cdot\frac{n_2}{2}}{\sqrt{\frac{n_1\cdot n_2\cdot(n+1)}{12}}},$$

where

$U = n_1\cdot n_2 +\frac{n_1^2+n_1}{2}  – \sum_{i=1}^{n_1}x_i$

<br>

#### [`PHC`] [`PHI`|`xPHI`|`pPHI`] Phi coefficient $\Phi$

---

Yule ([1912](http://www.jstor.org/stable/2340126)).

$$\Phi=\frac{a\cdot d-b\cdot c}{\sqrt{(a+c)\cdot(b+d)\cdot(a+b)\cdot(c+d)}}$$

with

$$\chi^2_{(df)}=n\cdot\Phi^2$$

where

$df=1$  

<br>

#### [`PHC`] [`rtet`|`srtet`|`prtet`] Tetrachoric correlation $r_{tet}$

---

Pearson ([1900a](https://royalsocietypublishing.org/doi/abs/10.1098/rsta.1900.0022)), Everitt ([1910](https://doi.org/10.1093/biomet/7.4.437), [1912](http://www.jstor.org/stable/2331587)), s. e.g. Brown ([1977](http://www.jstor.org/stable/2346985)), Digby ([1983](http://www.jstor.org/stable/2531104)), also Bonett & Price ([2005](http://www.jstor.org/stable/3701350)) or Long et al. ([2009](https://doi.org/10.1177/0013164408324463)), *proposed* approximate algorithm.

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

Fisher ([1915](https://doi.org/10.2307/2331838)).

$$Z=\frac{1}{2}\cdot \ln\frac{1+r}{1-r}$$

with

$$z=\frac{Z}{\sqrt{\frac{1}{n-3}}}$$

and 

$$r_Z=\frac{e^{2\cdot Z}-1}{e^{2\cdot Z}+1}$$

<br>

#### [`Zrr`|`prr`] Fisher-Z difference, Cohen's $q$

---

Cohen ([1988](https://www.scirp.org/(S(lz5mqp453edsnp55rrgjct55))/reference/ReferencesPapers.aspx?ReferenceID=2041144), p. 110).

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

For $\hat R_{c,12}^2$ see Olkin & Pratt ([1958](https://doi.org/10.1214/aoms/1177706717)).

$$R_{c,12}=\sqrt{\frac{r_{1c}^2+r_{2c}^2-2\cdot r_{12}\cdot r_{1c}\cdot r_{2c}}{1-r_{12}^2}},$$

$$\hat R_{c,12}^2=1-\frac{n-3}{n-k-2}\cdot \biggl[(1-R_{c,12}^2)+\frac{2}{n-k}\cdot(1-R_{c,12}^2)^2\biggr];k=2$$

with

$$f^2=\frac{R_{c,12}^2}{1-R_{c,12}^2},$$

$$F_{(3,df_2)}=\frac{R_{c,12}^2\cdot(n-4)}{(1-R_{c,12}^2)\cdot 3}$$

where

$f^2$ = effect size for multiple regression (Cohen, [1988](https://www.scirp.org/(S(lz5mqp453edsnp55rrgjct55))/reference/ReferencesPapers.aspx?ReferenceID=2041144), p. 410)  
$df_2 = n-4$  

<br>
<br>

### Exposure functions

To calculate the appropriate *time-aperture-speed* combination for given *light values* on a logarithmic scale, see e.g. Allbright ([1991](https://doi.org/10.1080/00223638.1991.11737126)), Marsden & Weinstein ([1985](https://doi.org/10.1007/978-1-4612-5024-1_9)), Howie ([2001](https://doi.org/10.1007/978-1-4471-0341-7_6)) and Sobot ([2021](https://doi.org/10.1007/978-3-030-79545-0_4)).

<br>

#### [`Ev`|`TEv`|`AEv`] [`E02`|`E03`] Exposure value $Ev$

---

$$Ev=\log2\frac{{Av}^2}{Tv^{-1}}=\frac{\log(Tv\cdot Av^2)}{\log(2)}$$

hence

$$Tv=\frac{2^{Ev}}{Av^2},$$

$$Av=\frac{\sqrt{2^{Ev}\cdot Tv}}{Tv}$$

with

$Tv$ = time value with $Tv=s^{-1}$  
$Av$= aperture value $f$

<br>

#### [`AvTv`] Aperture $Av$ for time $Tv$ with given $Ev$

---

$$Av_{Tv}=Av_{Tv_0}\cdot a_{Tv}$$

where

$$a_{Tv}=2^{\frac{1}{2}\cdot\log2\frac{Tv_0}{Tv}}$$

$$=e^{\frac{1}{2}\cdot\log\frac{Tv_0}{Tv}}$$

with

$Tv$ = time value with $Tv=s^{-1}$  
$Tv_0$ = initial time value with $Tv_0=s^{-1}$  
$Av$= aperture value $f$

<br>

#### [`AvS`] [`E03`] Aperture $Av$ for speed $S$ with given $Ev$

---

$$Av_S=Av_{S_0}\cdot a_{S}$$

where

$$a_S=2^{\frac{1}{2}\cdot\log2\frac{S}{S_0}}$$

$$=e^{\frac{1}{2}\cdot\log\frac{S}{S_0}}$$

with

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

### Functions of integration, $\pi$ and $\Gamma$

Gottfried Wilhelm Leibniz ([1684](https://gdz.sub.uni-goettingen.de/id/PPN788262599), [1686](https://gdz.sub.uni-goettingen.de/id/PPN788262947), [1693](https://archive.org/details/s1id13206590)) along with Sir Isaac Newton ([1687](https://books.google.com/books?id=XJwx0lnKvOgC), [1713](https://digital.onb.ac.com/OnbViewer/viewer.faces?doc=ABO_%2BZ180810706&order=7&view=SINGLE), [1726](https://gdz.sub.uni-goettingen.de/id/PPN512261393)) are considered the discoverers of *differential* and *integral calculus*. According to current consensus, both developed the methods independently of each other, see the so-called *Leibniz-Newton calculus controversy* --(c.f. Cajori, [1919](http://www.jstor.org/stable/2974042); Cassirer, [1943](http://www.jstor.org/stable/2180670); Rosenthal, [1951](http://www.jstor.org/stable/2308368); Schrader, [1962](http://www.jstor.org/stable/27956626); Kossovsky, [2020](https://doi.org/10.1007/978-3-030-51744-1_33)).--

Newton *began* working on a *geometric* form of *calculus* (the method of *fluxions and fluents*) in 1666, published in [1687](https://books.google.com/books?id=XJwx0lnKvOgC) (c.f. Roero,  [2005](https://doi.org/https://doi.org/10.1016/B978-044450871-3/50085-1)), yet, it was Leibniz who *introduced* the symbols $\int$ and $\partial$.

Here, the functions are primarily intended to display and calculate $\pi$ and $\Gamma$ within the coordinate system.

<br>

#### [`F01`|`F05`] Circular function, $\pi$

---

Weierstraß ([1894](https://quod.lib.umich.edu/u/umhistmath/AAN8481.0001.001), p. 53) describes $\frac{\pi}{2}=\int_0^{\infty}\frac{1}{1-x^2}dx$, which *may* be less heuristic.

$$f(x)=\sqrt{1-(\frac{x-b}{a})^2}\cdot a+c$$

with

$$F(x)=\frac{\pi}{2}=\int_{-1}^1f(x)dx;a=1,b=c=0$$

<br>

#### [`F01Z`] Spherical functions, $\pi$

---

For source codes to *volume integrals* of the *sphere* see Schrausser ([2024](https://doi.org/10.5281/zenodo.14280500)).

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

To extend the *factorial* to *non-integer* arguments, first considered by Daniel Bernoulli and Christian Goldbach 
(Bernoulli, [1729](https://commons.m.wikimedia.org/wiki/File:DanielBernoulliLetterToGoldbach-1729-10-06.jpg)), later Leonhard Euler ([1738](https://scholarlycommons.pacific.edu/euler-works/19/)) and Johann Carl Friedrich Gauss (s. Remmert, [1998](https://doi.org/10.1007/978-1-4757-2956-6_2)), first tables were given by Jahnke & Emde ([1909](https://books.google.com/books?id=BVRzvgAACAAJ)).

$$f(x,t)=\vartheta_\Gamma=t^{x-1}\cdot e^t$$

with

$$F(x,t)=\Gamma_x=\int_{0}^{\infty}f(x,t) dt+c,$$
$$F'(x)=\frac{\partial \Gamma}{\partial x}$$

<br>
<br>

### Distribution functions

The discovery of the *normal distribution* is attributed to Abraham de Moivre ([1738](https://books.google.com/books?id=PII\_AAAAcAAJ)), later Gauss ([1809](https://archive.org/details/theoriamotuscor00gausgoog/page/n1/mode/1up)) described the *arithmetic mean* as an estimator in context with the *normal law of errors*. Beneath the *normal distribution*, Gauss ([1823](https://doi.org/10.3931/e-rara-2857)) also introduces several important statistical concepts, such as the methods of *least squares* and of *maximum likelihood*.   

The $t$*-distribution* first derived as a posterior distribution by Lüroth ([1876](https://doi.org/10.1002/asna.18760871402)), appearing later as *Pearson Type IV* (Pearson, [1895](https://doi.org/10.1098/rsta.1895.0010)),  however gets its name as *Student's* $t$*-distribution* from William Sealy Gosset ([1908](https://doi.org/10.2307/2331554)), who published it using the pseudonym *Student*, though it was actually through the *extensive* works of Sir Ronald Aylmer Fisher that the distribution became well known.  

The $\chi^2$*-distribution* was first described by Friedrich Robert Helmert ([1876](https://gdz.sub.uni-goettingen.de/id/PPN599415665_0021)) and independently *rediscovered* by Pearson ([1900b](https://doi.org/10.1080/14786440009463897)) in context with the *goodness of fit* paradigm, where he developed the $\chi^2$-test with computed *table* of values, published by Elderton ([1902](https://doi.org/10.1093/biomet/1.2.155)), s. further Pearson ([1914](https://doi.org/10.1093/biomet/10.1.85)) or Plackett ([1983](https://doi.org/10.2307/1402731)).

Fisher ([1918](https://hdl.handle.net/2440/15097), [1921](https://hdl.handle.net/2440/15169), [1925](https://www.scirp.org/(S(i43dyn45teexjx455qlt3d2q))/reference/ReferencesPapers.aspx?ReferenceID=2056938)) introduced the term *variance* and proposed its formal analysis, as well as the $F$*-distribution* (Fisher, [1924](https://repository.rothamsted.ac.uk/item/8w2q9/on-a-distribution-yielding-the-error-functions-of-several-well-known-statistics); s. also Snedecor, [1934](https://doi.org/10.1037/13308-000) and Scheffé, [1959](https://psycnet.apa.org/record/1961-00074-000)). The methods became widely known from *Methods for Research Workers* (Fisher, [1925](https://www.scirp.org/(S(i43dyn45teexjx455qlt3d2q))/reference/ReferencesPapers.aspx?ReferenceID=2056938), [1954](https://www.worldcat.org/de/title/statistical-methods-for-research-workers/oclc/312138), [1973](https://www.amazon.com/Statistical-methods-research-workers-Fourteenth/dp/0050021702), [2017](https://www.amazon.com/Statistical-Methods-Research-Workers-Fisher/dp/9351286584)). 
<br>

#### [`Q01_`] [`ZWERT`|`zVAL`|`zVALp`] Standardizing, $z$-values

---

$$z=\frac{a-\overline x_x}{\sigma_x},$$

$$\zeta=z'=\frac{a-\overline x_x}{\hat\sigma_x}$$

where

$z'$ = estimated population $z$-values

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

For the *weighted geometric* mean $\ddot{\dot x}$ s. Siegel ([1942](https://doi.org/10.1080/01621459.1942.10500636)).

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

Schrausser ([2022a](https://www.academia.edu/81395688), p. 33).

$$\overline d=\frac{\sum_{i=1}^n{|x_i-\overline x|}}{\sum_{i=1}^n1};x_i\ne \overline x,$$

$$\hat{\overline \delta}=\sigma\cdot\zeta\cdot\sqrt{\frac{n}{n-1}}=\hat\sigma\cdot\zeta$$


with

$$\hat\sigma_{\overline d}=\sigma\cdot\frac{1}{2\cdot\zeta\cdot\sqrt{n}}$$

where

$\zeta_{\overline d}=\overline\delta=\frac{4}{5}$

<br>

#### [`NVTLG`] [`E01`|`F02`|`F03`] Standard normal distribution $f(x=z)$

---

De Moivre  ([1738](https://books.google.com/books?id=PII\_AAAAcAAJ)), Gauss ([1809](https://archive.org/details/theoriamotuscor00gausgoog/page/n1/mode/1up), [1823](https://doi.org/10.3931/e-rara-2857)).

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

Lüroth ([1876](https://doi.org/10.1002/asna.18760871402)), Pearson ([1895](https://doi.org/10.1098/rsta.1895.0010)), Gosset ([1908](https://doi.org/10.2307/2331554)).

$$f(t)=\vartheta=\frac{\Gamma_\frac{df+1}{2}}{\Gamma_{\frac{df}{2}}}\cdot(df\cdot \pi)^{-\frac{1}{2}}\cdot(1+\frac{t^2}{df})^{-\frac{df+1}{2}}$$

with

$$F(t,df)=p=\int_{-\infty}^t{f(t)dt}$$

where

$\Gamma_x=\int_{0}^\infty{y^{x-1}\cdot e^{-y}dy+c}$

<br>

#### [`ch2VTLG`|`F07_`] [`F02`|`F07`|`F03Z`] $\chi^2$ distribution $f(x=\chi^2)$

---

Helmert ([1876](https://gdz.sub.uni-goettingen.de/id/PPN599415665_0021)), Pearson ([1900b](https://doi.org/10.1080/14786440009463897), [1914](https://doi.org/10.1093/biomet/10.1.85)), Elderton ([1902](https://doi.org/10.1093/biomet/1.2.155)), Plackett ([1983](https://doi.org/10.2307/1402731)).

$$f(\chi^2)=\vartheta=\frac{1}{2^\frac{df}{2}\cdot\Gamma_\frac{df}{2}}\cdot{\chi^2}^{\frac{df}{2}-1}\cdot e^{-\frac{\chi^2}{2}}$$

with

$$F(\chi^2,df)=1-p^{\alpha2}=\int_{0}^{\chi^2}{f(\chi^2)d\chi^2}$$

where

$\Gamma_x=\int_{0}^\infty{y^{x-1}\cdot e^{-y}dy+c}$

<br>

#### [`FVTLG`] [`F02`|`F03Z`] $F$ distribution $f(x=F)$

---

Fisher ([1924](https://repository.rothamsted.ac.uk/item/8w2q9/on-a-distribution-yielding-the-error-functions-of-several-well-known-statistics)), Snedecor ([1934](https://doi.org/10.1037/13308-000)), Scheffé ([1959](https://psycnet.apa.org/record/1961-00074-000)).

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

Neyman ([1937](https://doi.org/10.1098/rsta.1937.0005)) introduced the *confidence interval* into statistical hypothesis testing vs. Fisher's *null hypothesis* testing, the *Neyman–Pearson lemma* (Neyman & Pearson, [1933](https://doi.org/10.1098/rsta.1933.0009); Lehmann, [1993](https://doi.org/10.1080/01621459.1993.10476404)).

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

Cohen ([1977](https://doi.org/10.1016/C2013-0-10517-X), [1988](https://www.scirp.org/(S(lz5mqp453edsnp55rrgjct55))/reference/ReferencesPapers.aspx?ReferenceID=2041144), p. 20, p. 49, [1992](https://doi.org/10.1037/0033-2909.112.1.15)), Borenstein et al.  ([1997](https://www.semanticscholar.org/paper/Power-and-precision-%3A-a-computer-program-for-power-Borenstein-Rothstein/f379f13a460b01488c35aea408e355436dbae839)), Borenstein et al. ([2001](https://books.google.com/books?id=tYg02XZBeNAC&printsec=frontcover&hl=de#v=onepage&q&f=false)).

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

For *paired* samples $(x_1|x_2)$.

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

$\overline x_d$ = mean of the differences of $x_1$ and $x_2$ values  
$df$ = $n-1$  

<br>

#### [`TU_`] [`tTU_`|`pTU_`|`tTUx`|`pTUx`] Unpaired 2-sample $t$-test

---

$$\theta=d_\overline{x}=\overline x_1-\overline x_2$$

with

$$t_{(df)}=\frac{d_\overline{x}}{\hat\sigma_{d_{\overline x}}},$$

$$\hat\sigma_{d_{\overline x}}=\sqrt{\frac{\sum_{i=1}^{n_1}{(x_{(i,1)}-\overline{x}_1)^2}+\sum_{i=1}^{n_2}{(x_{(i,2)}-\overline{x}_2)^2}}{n-2}}\cdot\sqrt{\frac{1}{n_1}+\frac{1}{n_2}}$$

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

For Yates's correction for *continuity* see Yates ([1934](http://www.jstor.org/stable/2983604)).

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

McNemar ([1947](https://doi.org/10.1007/BF02295996)).

$$\chi^2=\frac{(b-c)^2}{b+c},$$

$$\chi^2=\frac{(|b-c|-\frac{1}{2})^2}{b+c};20\lt (b+c)\lt 30$$

<br>
<br>

### Probability

Since until the Renaissance a *probable* opinion was merely *confirmed* by an authority and hence there was no further concept of *inductive* evidence (see Hacking, [1975](https://philpapers.org/rec/HACTEO-8); Hald, [2003](https://www.wiley.com/en-us/A+History+of+Probability+and+Statistics+and+Their+Applications+before+1750-p-9780471725176), p. 31), an *objective* representation of *probability* as such was first discussed by Antoine Arnauld and Pierre Nicole, ([1662](https://gallica.bnf.fr/ark:/12148/bpt6k574432.image), [1682](https://books.google.com/books?id=XQVaAAAAcAAJ), [1693](https://archive.org/details/logicorartofthin00arnaiala); c.f. also Arnauld et al., [1970](https://philpapers.org/rec/ARNLLO-8); van Evra, [1997](https://philpapers.org/rec/VANAAA-13); Dessì & Albury, [1997](https://doi.org/10.1080/01445349708837281) or Finocchiaro, [1997](https://doi.org/10.1023/A:1007756105432)).

The *binomial distribution* is primarily attributable to de Moivre ([1711](https://doi.org/10.1098/rstl.1710.0018), [1718](https://books.google.com/books?id=3EPac6QpbuMC), [1738](https://books.google.com/books?id=PII\_AAAAcAAJ)) and Jacob Bernoulli ([1713](https://www.e-rara.ch/zut/doi/10.3931/e-rara-9001)), see also Schneider ([2005a](https://doi.org/10.1016/B978-044450871-3/50087-5), [b](https://doi.org/10.1016/B978-044450871-3/50087-5)). Although not included as function, due to its *considerability* in this context, the *configuration frequency analysis, CFA* should be mentioned particularly (c.f. Krauth, [1973](https://d-nb.info/740097938); Krauth & Lienert, [1993](https://books.google.com/books?id=4oeIAAAACAAJ)).

An account of the *systematics and logic* of *dependent probabilities* within the framework of *Bayes' theorem* (Bayes & Price, [1763](http://www.jstor.org/stable/105741); c.f. Stigler, [2018](https://www.jstor.org/stable/26770983)) can be found in Schrausser ([2024c](https://doi.org/10.5281/zenodo.14183565)).

The arguably *most* important methods regarding the calculation of *probability parameters* are implemented.

<br>

#### [`Ch`|`ChA`|`ChB`] Arcsine transformation, Cohen's $h$

---

Cohen ([1988](https://www.scirp.org/(S(lz5mqp453edsnp55rrgjct55))/reference/ReferencesPapers.aspx?ReferenceID=2041144), p. 181).

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

Corresponds to the *additive probability* $^u p(\cup_n A)$.

$$f(X=r|p)=P_n=p\cdot q^r$$

with

$$f(X\le r|p)=p_n=\sum_{i=0}^r{p\cdot q^i}$$

where

$p$ = probability of event  
$r+1 = n$ = number of events  

<br>

#### [`NBNMVTLG`] [`NBINOM`] [`E01`] Negative binomial distribution $f(X\le r|r,p)$

---

With $k=1$ it corresponds to the *geometric distribution* $f(X\le r|p)$ and the *additive probability* $^u p(\cup_n A)$.

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

#### [`FX_`] [`z4F`|`pz4F`] Exact hypergeometric 2 × 2 test

---

*Fisher Exact* test (Fisher, [1922](https://doi.org/10.2307/2340521); Agresti, [1992](https://doi.org/10.1214/ss/1177011454)).

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
<br>

### Combinatorics

After Gersonides' *pioneering* work from 1321 dealing with *arithmetical* operations and *combinatorics* (s. Abraham Bar Hiyya Savasorda, [1450](https://www.loc.gov/item/2021667539/); Rabinovitch, [1970](http://www.jstor.org/stable/41133303)), the methods, being a fundamental part for *probability calculations*, are *mainly* based on Blaise Pascal ([1665](https://gallica.bnf.fr/ark:/12148/btv1b86262012.image#)), Bernoulli ([1713](https://www.e-rara.ch/zut/doi/10.3931/e-rara-9001)) and Euler ([1753](https://scholarlycommons.pacific.edu/euler-works/201/)), c.f. Ettingshausen ([1826](https://archive.org/details/diecombinatoris00ettigoog/page/n70/mode/1up?view=theater)). 

See further Sylvester ([1904](https://archive.org/details/collectedmathem01sylvrich/page/n7/mode/1up), [1908](https://archive.org/details/SylvesterCollected2/page/n3/mode/1up), [1909](https://archive.org/details/TheCollectedMathematicalPapersOfJamesJosephSylvesterVolumeIii/page/n3/mode/1up), [1912](https://archive.org/details/collectedmathema04sylvuoft/page/n8/mode/1up)) and MacMahon ([1915](https://openlibrary.org/works/OL1109964W/Combinatory_analysis), [1916](https://books.google.com/books/about/Combinatory_Analysis.html?id=A_PuAAAAMAAJ&redir_esc=y)), giving fundamental contributions to *matrix-theory* and *combinatorics*. 

The functions generate *permutation* and *variation* matrices *primarily* to support the *resampling* procedures described below (s. Resampling).

<br>

#### [`PRM2`] Permutation matrix $\mathbf{P_n}$

---

$n$ elements to $k=1$ class.

$$\mathbf{P_n}=\begin{bmatrix}p_1(x_1)&\cdots&p_1(x_n)\\\vdots&\ddots&\vdots\\p_P(x_1)&\cdots&p_P(x_n)\end{bmatrix}$$

$$\mathbf{P_n}=\begin{bmatrix}p_1(x_1)&\cdots&p_1(x_n)\\\\\vdots&\ddots&\vdots\\\p_P(x_1)&\cdots&p_P(x_n)\end{bmatrix}$$

where

$P_n=n!$  

<br>

#### [`PRM5`] Variation matrix $\mathbf{ ^w V_2^m}$

---

For the *dependent* 2 sample design, $n=2$ elements to class $m$

$$\mathbf{ ^w V_2^m}=\begin{bmatrix}v_1(x_1)&\cdots&v_1(x_m)\\\vdots&\ddots&\vdots\\v_{^wV}(x_1)&\cdots&v_{^wV}(x_m)\end{bmatrix}$$

$$\mathbf{ ^w V_2^m}=\begin{bmatrix}v_1(x_1)&\cdots&v_1(x_m)\\\\\vdots&\ddots&\vdots\\\v_{^wV}(x_1)&\cdots&v_{^wV}(x_m)\end{bmatrix}$$

where

$^w V_2^m=2^m$  

<br>

#### [`PRM4`] Variation matrix $\mathbf{ ^w V_n^m}$

---

$n$ elements to class $m$.

$$\mathbf{ ^w V_n^m}=\begin{bmatrix}v_1(x_1)&\cdots&v_1(x_m)\\\vdots&\ddots&\vdots\\v_{^wV}(x_1)&\cdots&v_{^wV}(x_m)\end{bmatrix}$$

$$\mathbf{ ^w V_n^m}=\begin{bmatrix}v_1(x_1)&\cdots&v_1(x_m)\\\\\vdots&\ddots&\vdots\\\v_{^wV}(x_1)&\cdots&v_{^wV}(x_m)\end{bmatrix}$$

where

$^w V_n^m=n^m;n\gt m$  

<br>

#### [`PRM3`] [`nk`] Permutation matrix $\mathbf{^w P_n^{(k_m,k_{n-m})}}$

---

$n$ elements to class $m$.

$$\mathbf{^w P_n^{(k_m,k_{m-n})}}=\begin{bmatrix}\begin{array}{ccc|ccc} p_1(x_{11})&\cdots&p_1(x_{k_1})&p_1(x_{12})&\cdots&p_1(x_{k_2})\\ \vdots&\ddots&\vdots&\vdots&\ddots&\vdots\\p_{^wP}(x_{11})&\cdots&p_{^wP}(x_{k_1})&p_{^wP}(x_{12})&\cdots&p_{^wP}(x_{k_2}) \end{array}\end{bmatrix}$$

$$\mathbf{^w P_n^{(k_m,k_{m-n})}}=\begin{bmatrix}\begin{array}{ccc|ccc} p_1(x_{11})&\cdots&p_1(x_{k_1})&p_1(x_{12})&\cdots&p_1(x_{k_2})\\\\\vdots&\ddots&\vdots&\vdots&\ddots&\vdots\\\p_{^wP}(x_{11})&\cdots&p_{^wP}(x_{k_1})&p_{^wP}(x_{12})&\cdots&p_{^wP}(x_{k_2}) \end{array}\end{bmatrix}$$

where

$^wP_n^{(k_m,k_{n-m})}=\frac{n!}{\prod_{i=1}^2 k_i!};n\ge m$  

<br>
<br>

### Resampling

*Permutation* or *randomization tests* were first mentioned by Fisher ([1935](https://psycnet.apa.org/record/1939-04964-000)), based on experiments in agriculture (Fisher, [1926](https://doi.org/10.23637/rothamsted.8v61q); Neyman, [1923](https://link.springer.com/chapter/10.1007/978-94-015-8816-4_10)). In this context see Pitman ([1937a](http://www.jstor.org/stable/2984124), [b](http://www.jstor.org/stable/2983647), [1938](http://www.jstor.org/stable/2332008)), Fisher ([1966](https://scirp.org/reference/referencespapers.aspx?referenceid=895747), [1971](https://home.iitk.ac.in/~shalab/anova/DOE-RAF.pdf), res.), especially Eugene Sinclair Edgington ([1964](https://doi.org/10.1080/00223980.1964.9916711), [1980](https://doi.org/10.2307/1164966), [1987](https://doi.org/10.1037/0022-0167.34.4.437), [2011](https://doi.org/10.1007/978-3-642-04898-2_56)) or Edgington & Onghena ([2007](https://doi.org/10.1201/9781420011814)).

The *bootstrap* method was introduced by Bradley Efron ([1979](https://doi.org/10.1214/aos/1176344552), [1981](https://doi.org/10.1093/biomet/68.3.589), [1982](https://doi.org/10.1137/1.9781611970319)) as a further development (Quenouille, [1949](https://doi.org/10.1111/j.2517-6161.1949.tb00023.x); Metropolis & Ulam, [1949](https://doi.org/10.1080/01621459.1949.10483310)), for *software* solutions see e.g. Solomon ([1982](https://doi.org/10.5555/1035853.1035900)), Dallal ([1986](http://www.jstor.org/stable/2684555), [1988](https://doi.org/https://doi.org/10.1016/0010-4809(88)90037-7)), Peladeau ([1993](https://doi.org/10.3758/BF03204533)), Wooff & Peladeau ([1994](https://doi.org/10.2307/2986032)), Mehta et al. ([2014](https://doi.org/10.1002/9781118445112.stat04892)),  also Schrausser ([2024d](https://doi.org/10.5281/zenodo.14280500)).

<br>

#### [`PV_`] Permutation test *P* for 2 paired samples $(x_1|x_2)$

---

Random sampling model, *systematic* permutation, $p$-value not randomized, variation matrix $\mathbf{ ^w V_2^m}$ *required*, s. Scambor ([1997](https://doi.org/10.13140/RG.2.2.28632.06405)), Scambor & Schrausser ([2022](https://www.academia.edu/94993376), p. 7), respectively.

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

Random sampling model, $p$-value not randomized.

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

Random sampling model, *systematic* permutation, $p$-value not randomized, permutation matrix $\mathbf{^w P_n^{(k_m,k_{n-m})}}$ *required*, see Schrausser ([1996](https://doi.org/10.13140/RG.2.2.24500.32640/1), [1998b](https://doi.org/10.5281/zenodo.11673333), [2022b](https://www.academia.edu/82224369), p. 2).

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

Random sampling model, $p$-value not randomized.

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

Quenouille ([1949](https://doi.org/10.1111/j.2517-6161.1949.tb00023.x)), Efron ([1979](https://doi.org/10.1214/aos/1176344552), [1981](https://doi.org/10.1093/biomet/68.3.589), [1982](https://doi.org/10.1137/1.9781611970319)).

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
<br>

### Complex plane

It was the Italian mathematician Gerolamo Cardano ([1545a](https://archive.org/details/arsmagnaorruleso0000card), [b](https://web.archive.org/web/20220201093634/http://www.filosofia.unimi.it/cardano/testi/operaomnia/vol_4_s_4.pdf)) who *first* conceived the term *imaginary*, for the further historical development of *complex numbers* s. René Descartes ([1664](https://books.google.com/books?id=VtFcAAAAcAAJ), [2012](https://books.google.com/books?id=MB7F32p0y5MC), res.), Gauss ([1828](https://doi.org/10.3931/e-rara-61066), [1832](https://doi.org/10.3931/e-rara-61067)) also Wirtinger ([1927](https://doi.org/10.1007/BF01447872)). 

At this point, one should recall the *definitional* importance of *geometry* and *trigonometry* in context with the calculation of *complex numbers* itself, where $|z|$ is *calculated* according to Pythagoras (c.f. Ratdolt, [1482](https://catalog.lindahall.org/discovery/delivery/01LINDAHALL_INST:LHL/1286816310005961), propositio 46) by $|z|=r=\sqrt{x^2+y^2}$.

After the fundamental change in mathematics from *geometric* to *algebraic* representation took place in the 16th century (c.f. Heath, [1908a](https://archive.org/details/thirteenbookseu02heibgoog), [b](https://archive.org/details/thirteenbookseu00heibgoog), [c](https://archive.org/details/thirteenbookseu03heibgoog); Bochner, [1978](https://hdl.handle.net/1911/63315); Anglin & Lambek, [1995](https://doi.org/10.1007/978-1-4612-0803-7_25); Malet, [2006](https://doi.org/10.1016/j.hm.2004.11.011) or Alten et al., [2014](https://doi.org/10.1007/978-3-642-38239-0_4)), the origins of *trigonometric series* of *tangents* and *sine* can be seen following early attempts (s. Jyesthadeva, [1530](https://archive.org/details/raswhishNA-124); Whish, [1834](https://doi.org/10.1017/S0950473700001221); Gupta, [1974](https://doi.org/10.1016/0315-0860(74)90067-6) or Divakaran, [2007](http://www.jstor.org/stable/23497280)) during the European *reinvention* in the works of Gregory ([1671](https://archivesearch.lib.cam.ac.uk/repositories/2/archival_objects/566767), [1668a](https://books.google.com/books?id=ZtRYqgyD5YsC), [b](https://archive.org/details/gregory_universalis)), Leibniz ([1682](https://books.google.com/books/about/Acta_eruditorum.html?id=E7MasYIsMKQC), [2012](https://doi.org/10.26015/adwdocs-1924)), Newton ([1669](https://www.newtonproject.ox.ac.uk/view/texts/normalized/NATP00204), [1711](https://doi.org/10.3931/e-rara-8934)) and Brook Taylor ([1715](https://books.google.com/books?id=iXN1xgEACAAJ), [1717](https://books.google.com/books?id=r-Gq9YyZYXYC)) with the definition of the *Taylor series* of *sine* where $\sin⁡x=\sum_{n=0}^\infty\frac{(-1)^n }{(2⋅n+1)!}⋅x^{2⋅n+1}$. (c.f. Gregory & Collins, [1939](https://books.google.com/books?id=\_eruAAAAMAAJ); Boyer, [1968](https://archive.org/details/ahistoryofmathematicscarlbboyer1968_315_t), p. 422 ff.; Feigenbaum, [1985](http://www.jstor.org/stable/41133765)). 

Finally, Euler ([1748a](https://scholarlycommons.pacific.edu/euler-works/101/), [b](https://scholarlycommons.pacific.edu/euler-works/102/)) established the *analytic* treatment of *trigonometric* functions, defining them in relation with *complex exponential* functions by $e^{ix}=\cos⁡x+i \sin⁡x$, where $e=\sum_{n=0}^\infty\frac{1}{n!}$
and thus laid the foundation of *modern* mathematical analysis (c.f. Finkel, [1897](http://www.jstor.org/stable/2968971); Walter, [1982](http://www.jstor.org/stable/2320218); Koyama & Kurokawa, [2005](http://www.jstor.org/stable/4097775); Calinger, [2016](http://www.jstor.org/stable/j.ctv7h0smb) and Schrausser, [2024b](https://doi.org/10.5281/zenodo.11356370)).


<br>

#### [`CPLX`|`CPLX2`] [`F02Z`] Geometric representation of complex numbers $z$ in the complex plane

---

Argand diagram (s. Argand, [1813](https://fr.wikisource.org/wiki/Annales_de_math%C3%A9matiques_pures_et_appliqu%C3%A9es/Tome_04/Philosophie_math%C3%A9matique,_article_4), [1874](http://catalogue.bnf.fr/ark:/12148/cb300261909), res.).

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

<br>
<br>

Table 2. Methods and the corresponding HP Prime ([2017](https://www.hpcalc.org/details/7445)) *CAS*, *User* and *Application* functions (Schrausser, [2025](https://doi.org/10.5281/zenodo.14721085)) compared to equivalent Schrausser-MAT functions *MAT* (Schrausser, [2022a](https://www.academia.edu/81395688)).		

'func_tab.md`

## Source codes

<br>

### CAS functions

<br>

#### A

##### ABT1.pas
```
//ABT1()/D.G.SCHRAUSSER/2022
//Binomialp[A1:bA2:c]/Addp[C1:pC2:nC3:k]
#cas
ABT1():=
BEGIN
STARTAPP("Arbeitsblatt");
STARTVIEW(1)
5▶A1;
5▶A2;
=A1+A2▶A3;
0.5▶B1;
=BINOMIAL_CDF(A3,B1,A1)▶B4
0.5▶C1;
8▶C2;
1▶C5;
=1-(1-C1)^C2▶D4;
=Σ((C5+I-1)!/(I!*(C5-1)!)*C1^C5*(1-C1)^I,I,0,C2-C5)▶D6;
END;
#end 
//
```
##### ABT2.pas
```
//ABT2(cell count a,b,c,d)/D.G.SCHRAUSSER/2025
//2×2 chi-squared test for independence
//Observed frequencies abcd fb
//Expected frequencies fe
//Probabilities p(A^B), p(B|A), p(A|B)
//Chi-squared with 2-tailed p
//e.g.ABT2(17,12,14,24)[Spreadsheet]
#cas
ABT2(a,b,c,d):=
BEGIN
STARTAPP("Arbeitsblatt");
STARTVIEW(1)
"A1"▶B1
"A2"▶C1
"A1"▶E1
"A2"▶F1
"B1"▶A2
"B2"▶A3
"B1"▶A5
"B2"▶A6
"B1"▶A8
"B2"▶A9
"B1"▶A11
"B2"▶A12
a▶B2
b▶C2
c▶B3
d▶C3
D2:==B2+C2
D3:==B3+C3
B4:==B2+B3
C4:==C2+C3
D4:==B2+C2+B3+C3
E5:==B2/D4
F5:==C2/D4
g5:==D2/D4
E6:==B3/D4
F6:==C3/D4
g6:==D3/D4
E7:==B4/D4
F7:==C4/D4
g7:==g5+g6
E2:==B2/D2
F2:==C2/D2
g2:==E2+F2
E3:==B3/D3
F3:==C3/D3
g3:==E3+F3
B5:==B2/B4
B6:==B3/B4
B7:==B5+B6
C5:==C2/C4
C6:==C3/C4
C7:==C5+C6
B8:==E7*D2
B9:==E7*D3
C8:==F7*D2
C9:==F7*D3
D13:==D4*(B2*C3-C2*B3)^2/((B2+C2)*(B3+C3)*(B2+B3)*(C2+C3))
B11:==(B2-B8)^2/B8
B12:==(B3-B9)^2/B9
C11:==(C2-C8)^2/C8
C12:==(C3-C9)^2/C9
D11:==((B2-B8)^2/B8)+(C2-C8)^2/C8
D12:==((B3-B9)^2/B9)+(C3-C9)^2/C9
B13:==B11+B12
C13:==C11+C12
g11:==1-(CHISQUARE_CDF(1,D11))
g12:==1-(CHISQUARE_CDF(1,D12))
g13:==1-(CHISQUARE_CDF(1,D13))
E11:==1-(CHISQUARE_CDF(1,B11))
E12:==1-(CHISQUARE_CDF(1,B12))
E13:==1-(CHISQUARE_CDF(1,B13))
F11:==1-(CHISQUARE_CDF(1,C11))
F12:==1-(CHISQUARE_CDF(1,C12))
F13:==1-(CHISQUARE_CDF(1,C13))
END;
#end 
//
```
##### AMG.pas
```
//AMG()/D.G.SCHRAUSSER/2025
//Weighted arithmetic, geometric and harmonic mean
#cas
AMG():=
BEGIN
//L1()(2) provided
size(L1)▶L3(1)
mean(L1)(1)▶L3(2)
MAKELIST(L1(x)(1)*L1(x)(2),x,1,L3(1))▶L2
ΣLIST(L1)(2)▶L3(3)
Σ(L2)/L3(3)▶L3(4)
L3(3) NTHROOT (product((L1(x)(1))^L1(x)(2),x,1,L3(1)))▶L3(5)
L3(3)/(Σ(L1(x)(2)/L1(x)(1),x,1,L3(1)))▶L3(6)
//n,AM,sumni,GAM,GGM,GHM
L3
END;
#end
//
```
#### B

##### BNMVTLG.pas
```
//BNMVTLG(p[e],a=k,n)/D.G.SCHRAUSSER/2025
//e.g.BNMVTLG(0.5,5,10)
#cas
BNMVTLG(P,K,N):=
BEGIN
B=0;
FOR I FROM 0 TO K DO
 BINOMIAL(N,P,I)▶L4(I)
 B=B+L4(I)
END;
D5=L4;L4={}
FOR I FROM 0 TO N DO
 BINOMIAL(N,P,I)▶L5(I);
END;
D6=L5;L5={};
STARTAPP("Statistiken_1_Var");
STARTVIEW(1);
"D5"▶H1(1);5▶H1(3);
"D6"▶H2(1);5▶H2(3);
//p
RETURN(B);
END;
#end
//
```
##### BtU_.pas
```
//BtU_(simulation cycles B)/D.G.SCHRAUSSER/2025
//Bootstrap method, Bt
//2 independent samples (x|g)
//e.g.BtU_(1000)
#cas
BtU_(B):=
BEGIN
//L1L2 provided
{}▶L3;{}▶L4
{}▶L5;{}▶L6
0▶M11
0▶M12
0▶M2
SIZE(L1)▶N1
SIZE(L2)▶N2
N=N1+N2
ABS(mean(L1)-mean(L2))▶Q02
ΣLIST(L1)▶Q011
ΣLIST(L2)▶Q012
//
CONCAT(L1,L2)▶L9
MSGBOX("BtU")
FOR J FROM 1 TO B 
DO
//
FOR A FROM 1 TO N DO
L9(RANDINT(N))▶L0(A) END;
FOR A FROM 1 TO  N1 DO
L0(A)▶L3(A) END;
FOR A FROM 1 TO  N2 DO
L0(N1+A)▶L4(A) END;
ABS(mean(L3)-mean(L4))▶QJ2
ΣLIST(L3)▶QJ11
ΣLIST(L4)▶QJ12
IF QJ11≥Q011 THEN M11=M11+1 END;
IF QJ12≥Q012 THEN M12=M12+1 END;
IF QJ2≥Q02 THEN M2=M2+1 END;
QJ11▶L5(J)
QJ2▶L6(J)
END;
//
SORT(L5)▶L5
SORT(L6)▶L6
{}▶L9
{}▶L0
N1,N2,[Q011,Q012,Q02],M11/B,M12/B,M2/B
END;
#end
//
```
#### C

##### ch2VTLG.pas
```
//ch2VTLG(chi-squared,df)/D.G.SCHRAUSSER/2025
//e.g.ch2VTLG(2.65,1)[AdvancedGraphing]
#cas
ch2VTLG(C2569,A7485):=
BEGIN
G=Gamma(A7485/2)
//P=∫((1/(2^(A7485/2)*G))*X^((A7485/2)-1)*e^(-X/2),X,0,C)
P=CHISQUARE_CDF(A7485,C2569)
A7485▶A
C2569▶C
"Y=(1/(2^(A/2)*G))*X^((A/2)-1)*e^(-X/2)"▶V1
"Y<(1/(2^(A/2)*G))*X^((A/2)-1)*e^(-X/2) AND Y>0 AND X<C AND X>0"▶V2
STARTAPP("Erweiterte_Grafiken");
STARTVIEW(1);
[1-P]
END;
#end
//
```
##### CIXY.pas 
```
//CIXY(x,y'CI)/D.G.SCHRAUSSER/2022  
//Standard error of prediction sy'x, CI  
//e.g.CIXY(3,0.99[ZWERT,Statistics_2_Var,Spreadsheet,AdvancedGraphing]  
#cas  
CIXY(X,C):=  
BEGIN  
//C1C2 provided  
STARTAPP("Statistiken_2_Var");  
STARTVIEW(−6)  
A=Corr  
B=sY  
D=MeanY  
PredY(X)▶L3(2);  
√(1-A^2)*B*NORMALD_ICDF(1-((1-C)/2))▶L3(4)  
L3(4)+L3(2)▶L3(3)  
L3(2)-L3(4)▶L3(1)  
C▶L3(5)  
ZWERT(L3(1),D,B)▶L4(1)  
ZWERT(L3(2),D,B)▶L4(2)  
ZWERT(L3(3),D,B)▶L4(3)  
L4(1)▶U  
L4(3)▶O  
ZWERT(X,MeanX,sX)▶Q  
STARTAPP("Arbeitsblatt");  
"ŷ-"▶A1;L3(1)▶B1;L4(1)▶C1  
"ŷ"▶A2;L3(2)▶B2;L4(2)▶C2  
"ŷ+"▶A3;L3(3)▶B3;L4(3)▶C3  
"±"▶A4;L3(4)▶B4;L3(4)/B▶C4  
"CI"▶A5;L3(5)▶B5;  
STARTAPP("Erweiterte_Grafiken");  
STARTVIEW(1)  
"Y=A*X"▶V3  
"Y>0 AND (Y<A^(-1)*X AND Y>A*X) OR Y<0 AND   (Y>A^(-1)*X AND Y<A*X)"▶V4  
"Y=√(1-X^2)"▶V5  
"Y=-1*√(1-X^2)"▶V6  
"X<A AND X>0 AND Y<A AND Y>0"▶V7  
CAS((X,Y)->((Y<O) AND (Y>U)) AND ((X==Q))▶V0)  
//y'-,y',y'+,CI,sy'x,CIp  
RETURN(L3);  
END;  
#end  
//  
```
##### CPLHX.pas
```
//CPLHX(complex number,a+bi)/D.G.SCHRAUSSER/2022  
//e.g.CPLHX(2+i/2),[AdvancedGraphing]  
#cas  
CPLHX(C):=  
BEGIN  
C▶Z1  
RE(Z1)▶R  
IM(Z1)▶I  
Z1▶L1(1)  
ABS(Z1)▶L1(2)  
ARG(Z1)▶L1(3)  
"Y=R*X"▶V1  
"Y=I"▶V2  
"Y=√((R*X)^2+I^2)"▶V3  
"Y=(I/ABS(I))*(π/2)-ATAN((R/I)*X)"▶V4  
STARTAPP("Erweiterte_Grafiken")  
STARTVIEW(1)  
RETURN(L1);  
END;  
#end  
//  
```
##### CPLX.pas
```
//CPLX(complex number,a+bi)/D.G.SCHRAUSSER/2022  
//e.g.CPLX(2+i/2),[AdvancedGraphing]  
#cas  
CPLX(C):=  
BEGIN  
C▶Z1  
RE(Z1)▶R  
IM(Z1)▶I  
ABS(Z1)▶L1(1)  
R▶X▶J  
I▶K  
"Y=√(1-X^2)"▶V5  
"Y=-1*√(1-X^2)"▶V6  
"Y=I"▶V7  
"X=R"▶V8  
"X<R AND X>0 AND Y>0 AND Y≤0.01"▶V0  
"Y=(I/R)*X AND Y>0 AND X<R"▶V9  
IF I<0 THEN  
"Y=(I/R)*X AND Y<0 AND X<R"▶V9  
END;  
IF R<0 THEN  
"Y=(I/R)*X AND Y>0 AND X>R"▶V9 
END;  
IF I<0 AND R<0 THEN  
"Y=(I/R)*X AND Y<0 AND X>R"▶V9  
END;  
ARG(Z1)▶L1(2)  
CONVERT(L1(2)_rad,1_deg)▶L1(3)  
RETURN(L1);  
END;  
#end  
//  
```
##### CPLX.pas
```
//CPLX2(complex number,a+bi)/D.G.SCHRAUSSER/2022  
//e.g.CPLX2(2+i/2),[CPLX,Spreadsheet]//  
#cas  
CPLX2(C):=  
BEGIN  
CPLX(C)  
STARTAPP("Arbeitsblatt");  
"z"▶A1;Z1▶B1  
"|z|"▶A2;L1(1)▶B2  
"∡π"▶A3;L1(2)▶B3  
"∡°"▶A4;L1(3)▶B4  
END;  
#end  
//  
```

#### D

##### DELTA2.pas 
```
//DELTA2()/D.G.SCHRAUSSER/2025  
//Somers' D for binary values [0,1]  
#cas  
DELTA2():=  
BEGIN  
SIZE(L1)▶N  
{}▶L3  
0▶X01  
0▶X02  
FOR I FROM 1 TO N DO  
IF L1(I)=1 AND L2(I)=1 THEN  
X01=X01+1  
END;  
IF L1(I)=1 AND L2(I)=0 THEN  
X02=X02+1  
END;  
END;  
X01/N▶L3(1)  
X02/N▶L3(2)  
L3(1)-L3(2)▶L3(3)  
//pA,pB,D  
approx(L3)  
END;  
#end  
//  
```



#### E

##### EPSILON.pas
```
//EPSILON(x1,m1,m2,s12,d)/D.G.SCHRAUSSER/2022
//e.g.EPSILON(106,100,110,15,25)
#cas
EPSILON(X,M,N,S,D):=
BEGIN
G=Gamma((D+1)/2)/Gamma(D/2)
E=(N-M)/S
P=1-∫(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X,−∞,E)
T=(((N+M)/2)-M)/S
H=1-∫(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X,−∞,T)
Q=(X-M)/S
R=1-∫(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X,−∞,Q)
U=∫(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X,−∞,(X-N)/S)
B=1-U
"X>T AND X≤T"▶V1
"X>Q AND X≤Q"▶V2
//
D▶K
"X>0 AND X<E AND Y<0 AND Y>-0.01"▶V3
"Y<(G*(K*π)^(-1/2)*(1+((E-X)^2/K))^(-(K+1)/2)) AND Y>0 AND X>Q"▶V6
"Y<(G*(K*π)^(-1/2)*(1+((E-X)^2/K))^(-(K+1)/2)) AND Y>0 AND X<Q"▶V7
"Y=(G*(K*π)^(-1/2)*(1+((E-X)^2/K))^(-(K+1)/2))"▶V8
"Y=(G*(K*π)^(-1/2)*(1+((X)^2/K))^(-(K+1)/2))"▶V0
"Y<(G*(K*π)^(-1/2)*(1+((X)^2/K))^(-(K+1)/2)) AND Y>0 AND X>Q"▶V9
E▶L2(1);P▶L3(1);N▶L1(1)
T▶L2(2);H▶L3(2);T*S+M▶L1(2)
Q▶L2(3);R▶L3(3);Q*S+M▶L1(3)
U▶L4(3);B▶L5(3)
STARTAPP("Arbeitsblatt");
"ε"▶A1;L2(3)▶B1;L2(2)▶C1;L2(1)▶D1;
"x"▶A2;L1(3)▶B2;L1(2)▶C2;L1(1)▶D2;
"α"▶A3;L3(3)▶B3;L3(2)▶C3;L3(1)▶D3;
"β"▶A4;L4(3)▶B4;
"1-β"▶A5;L5(3)▶B5;
STARTAPP("Erweiterte_Grafiken")
STARTVIEW(1)
RETURN(L2(1),L3(3),L4(3));
END;
#end
//
```
##### EPSILON2.pas
```
//EPSILON2(epsilon,n,df,pcrit)/D.G.SCHRAUSSER/2022
//e.g.EPSILON2(0.38,100,99,0.95)
//optimal effect size epsilon
//optimal alpha t
//1-p(alpha opt t)
#cas
EPSILON2(E,N,D,K):=
BEGIN
#t opt niv
V=√(E^2*N)/2▶L6(2)
P=1-STUDENT_CDF(D,V)▶L6(3)
#e opt eff stke
L=√((2*STUDENT_ICDF(D,K))^2/N)▶L6(1)
"X>0 AND X<L AND Y<0 AND Y>-0.02"▶V1
RETURN(L6);
END;
#end
//
 ```
##### EPSOLON3.pas
```
//EPSILON3(100,110,15,25,0.99)
#cas
EPSILON3(M,N,S,D,K):=
BEGIN
F=STUDENT_ICDF(D,K)
M+S*F▶L7(1)
N-S*F▶L7(2)
"X>E-F AND X≤E-F AND Y>0 AND Y<(G*(K*π)^(-1/2)*(1+((E-X)^2/K))^(-(K+1)/2))"▶V4
"X>F AND X≤F AND Y>0 AND Y<(G*(K*π)^(-1/2)*(1+((X)^2/K))^(-(K+1)/2))"▶V5
RETURN(L7);
END;
#end 
//
```
#### F

##### FVTLG.pas
```
//FVTLG(F,df1,df2)/D.G.SCHRAUSSER/2025
//e.g.FVTLG(2.8,10,5)
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
P,[1-P]
END;
#end 
//
```
##### FX.pas
```
//FX_(cell count a,b,c,d)/D.G.SCHRAUSSER/2025
//e.g.FX_(1,2,3,1)
//Exact hypergeometric 4-field test according to R. A. Fisher
//(Fisher Exact Test): Hypergeometric probability p to cell a of the 4-field initial arrangement for all possible arrangements a
//Exact significance levels p[exact1], p[exact2]
#cas
FX_(a,b,c,d):=
BEGIN
{}▶L1
1▶S
0▶X
0▶P20
0▶P21
0▶P3
a+b+c+d▶N
a+b▶z1
c+d▶z2
a+c▶s1
b+d▶s2
P0= (z1!*z2!*s1!*s2!)/(N!*a!*b!*c!*d!);
P0▶L2(1)
PRINT("P0-")
PRINT(P0)
PRINT("Pi-")
//
IF z1>s1 THEN max1=z1 ELSE max1=s1 END;
IF z1>s2 THEN max2=z1 ELSE max2=s2 END;
IF z2>s1 THEN max3=z2 ELSE max3=s1 END;
IF z2>s2 THEN max4=z2 ELSE max4=s2 END;
//
FOR I FROM 0 TO max1 DO
FOR J FROM 0 TO max2 DO
FOR K FROM 0 TO max3 DO
FOR L FROM 0 TO max4 DO
a1=I+J;
a2=K+L; 
b1=I+K;
b2=J+L;
//
IF  
a1=z1 AND 
a2=z2 AND 
b1=s1 AND
b2=s2
THEN
IF  
I+J≠0 AND
K+L≠0 AND
I+K≠0 AND
J+L≠0
THEN
P10=(a1!*a2!*b1!*b2!)/(N!*I!*J!*K!*L!)
X+1▶X
P3=P10+P3
approx(P10)▶L1(X)
IF approx(P10)<approx(P0) OR approx(P10)=approx(P0)
THEN
P20+P10▶P20 END;
PRINT(P10)
END;
END;
//
END;
END;
END;
END;
PRINT("p--")
PRINT(P3)
//
FOR I FROM 1 TO X DO
IF L1(I)=L2(1) THEN
0▶S
END;
IF S=1 THEN
L1(I)+P21▶P21
END;
END;
P21+P0▶P21
P22=1-(P21)
//sums, P0, C, p[exact1], 1-p[exact1], p[exact2]
z1,z2,s1,s2,N,[P0],X,P21,P22,[P20]
END;
#end
//
```
##### FX_.pas
```
//FX_(cell count a,b,c,d)/D.G.SCHRAUSSER/2025
//e.g.FX_(1,2,3,1)
//Exact hypergeometric 4-field test according to R. A. Fisher
//(Fisher Exact Test): Hypergeometric probability p to cell a of the 4-field initial arrangement for all possible arrangements a
//Exact significance levels p[exact1], p[exact2]
//(slow algorithm)
#cas
FX_(a,b,c,d):=
BEGIN
{}▶L1
1▶S
0▶X
0▶P20
0▶P21
0▶P3
a+b+c+d▶N
a+b▶z1
c+d▶z2
a+c▶s1
b+d▶s2
P0= (z1!*z2!*s1!*s2!)/(N!*a!*b!*c!*d!);
PRINT("P0-")
PRINT(P0)
PRINT("Pi-")
//
FOR I FROM 0 TO N DO
FOR J FROM 0 TO N DO
FOR K FROM 0 TO N DO
FOR L FROM 0 TO N DO
a1=I+J; 
a2=K+L; 
b1=I+K;
b2=J+L;
//
IF  
a1=z1 AND 
a2=z2 AND 
b1=s1 AND
b2=s2
THEN
IF  
I+J≠0 AND
K+L≠0 AND
I+K≠0 AND
J+L≠0
THEN
P10=(a1!*a2!*b1!*b2!)/(N!*I!*J!*K!*L!)
X+1▶X
P3=P10+P3
approx(P10)▶L1(X)
IF approx(P10)<approx(P0) OR 
   approx(P10)=approx(P0)
THEN
P20+P10▶P20 END;
PRINT(P10)
END;
END;
//
END;
END;
END;
END;
PRINT("p--")
PRINT(P3)
//
FOR I FROM 1 TO X DO
IF L1(I)=P0 THEN
0▶S
END;
IF S=1 THEN
L1(I)+P21▶P21
END;
END;
P21+P0▶P21
P22=1-(P21)
// sums, P0, C, p[exact1], 1-p[exact1], p[exact2]
z1,z2,s1,s2,N,[P0],X,P21,P22,[P20]
END;
#end
//
```
#### G

##### GMVTLG.pas
```
//GMVTLG(pA,r+1=n)/D.G.SCHRAUSSER/2025
//e.g.GMVTLG(1/6,10)
#cas
GMVTLG(P,N):=
BEGIN
MAKELIST(P*(1-P)^x,x,0,N-1)▶L1
MAKELIST(1-(1-P)^x,x,1,N)▶L2
STARTAPP("Statistiken_1_Var");
STARTVIEW(1);
"L1"▶H1(1);6▶H1(3);
"L2"▶H2(1);5▶H2(3);
//P,p
L1(N),L2(N)
END;
#end
//
```
#### I

##### IC_M.pas 
```
//IC_M(n of variables k)/D.G.SCHRAUSSER/2025  
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
```
##### K

##### KOR.pas 
```
//KOR()/D.G.SCHRAUSSER/2025  
//Pearson corr/[pCor]  
#cas  
KOR():=  
BEGIN  
//L1()(2) provided  
SIZE(L1)(1)▶N  
N-2▶df  
covariance_correlation(L1)▶L0  
L0(2)▶r  
L0(1)▶cv  
pCor(r,N)(2)▶p  
pCor(r,N)(3)▶p2  
r^2*100▶D  
{}▶L0  
//  
df,[cv,r,D],p,[p2]  
END;  
#end  
//  
```
#### M

##### MCORR2.pas  
```
//MCORR2()/D.G.SCHRAUSSER/2022  
//Multiple correlation R  
//[Statistiken_2_Var,Arbeitsblatt,Graph3D,FMCORR,MCORR]  
#cas  
MCORR2():=  
BEGIN  
//M1()(3) provided  
//C1C2 to S1  
STARTAPP("Statistiken_2_Var");  
STARTVIEW(−6)  
M2=TRN(M1)  
L7=M2(1);C1=L7  
L7=M2(2);C2=L7  
Do2VStats(S1)  
Corr▶L1(1)  
MeanX▶L3(1);sX▶L4(1)  
MeanY▶L3(2);sY▶L4(2)  
//  
L7=M2(1);C1=L7  
L7=M2(3);C2=L7  
Do2VStats(S1)  
Corr▶L1(2)  
MeanY▶L3(3);sY▶L4(3)  
//  
L7=M2(2);C1=L7  
L7=M2(3);C2=L7  
Do2VStats(S1)  
Corr▶L1(3)  
//  
C=MCORR(L1(1),L1(2),L1(3))  
C▶L2(1)  
F=FMCORR(C,NbItem)  
F▶L2(2)  
1-FISHER_CDF(3,NbItem-3-1,F)▶L2(5);  
NbItem-3-1▶L2(4)  
3▶L2(3)  
M2=0;L7={};  
1▶M2(1,1);L1(3)▶M2(1,2)  
L1(3)▶M2(2,1);1▶M2(2,2)  
L1(1)▶M3(1,1)  
L1(2)▶M3(2,1)  
M4=M2^-1*M3  
M4(1,1)*(L4(1)/L4(2))▶L5(1)  
M4(2,1)*(L4(1)/L4(3))▶L5(2)  
L3(1)-(L5(1)*L3(2)+L5(2)*L3(3))▶L6(1)  
#y=b1x1+b2x2+a  
"L5(1)*X+L5(2)*Y+L6(1)"▶FZ1  
STARTAPP("Arbeitsblatt");  
"R"▶A1;L2(1)▶B1;"r1c"▶C1;L1(1)▶D1  
"F"▶A2;L2(2)▶B2;"r2c"▶C2;L1(2)▶D2  
"r23"▶C3;L1(3)▶D3  
"df1"▶A3;L2(3)▶B3;"b1"▶C4;M4(1,1)▶D4  
"df2"▶A4;L2(4)▶B4;"b2"▶C5;M4(2,1)▶D5  
"p"▶A5;1-L2(5)▶B5;"bc1"▶C6;L5(1)▶D6  
"α₂"▶A6;L2(5)▶B6;"bc2"▶C7;L5(2)▶D7  
"ac"▶C8;L6(1)▶D8  
RETURN (L2);  
END;  
#end  
//  
```
##### MDN.pas  
```
//MDN()/D.G.SCHRAUSSER/2025  
//Mean dispersion D  
#cas  
MDN():=  
BEGIN  
approx(mean(L1))▶L4(1)  
MAKELIST(approx(ABS(L1(x)-L4(1))),x,1,SIZE(L1))▶L2  
FOR I FROM 1 TO SIZE(L1) DO  
1▶L3(I)  
IF L1(I)=L4(1) THEN  
0▶L3(I)  
END;  
END;  
stddev(L2)▶L4(2)  
Σ(L2)/Σ(L3)▶L4(3)  
L4(2)*L4(3)*(SIZE(L1)/(SIZE(L1)-1))▶L4(4)  
0.5*√((L4(2)*(SIZE(L1)/(SIZE(L1)-1)))/(SIZE(L1)))▶L4(5)  
//AM,s,D,D',sD  
END;  
#end  
//  
```

##### mPU_.pas
```
//mPU_(simulation cycles M)/D.G.SCHRAUSSER/2025
//Permutation test in the random sampling model,
//randomized permutation, p-value not randomized, mP
//2 independent samples (x|g)
//(including intraclass permutation)
//e.g.mPU_(100)
#cas
mPU_(M):=
BEGIN
//L1L2 provided
//
{}▶L3;{}▶L4
{}▶L5;{}▶L6
0▶M11
0▶M12
0▶M2
SIZE(L1)▶N1
SIZE(L2)▶N2
N=N1+N2
//N vector L7
FOR I FROM 1 TO N DO
I▶L7(I) END;
//
ABS(mean(L1)-mean(L2))▶Q02
ΣLIST(L1)▶Q011
ΣLIST(L2)▶Q012
//
MSGBOX("mPU")
FOR J FROM 1 TO M 
DO
//
//prm vector L9
FOR A FROM 1 TO N DO
{RANDOM(),L7(A)}▶L0(A) END;
sort(L0)▶L9
FOR A FROM 1 TO N DO
L9(A)▶L8;L8(2)▶L9(A) END;
{}▶L8
CONCAT(L1,L2)▶L8
//
FOR A FROM 1 TO  N1 DO
L8(L9(A))▶L3(A) END;
FOR A FROM 1 TO  N2 DO
L8(L9(N1+A))▶L4(A) END;
ABS(mean(L3)-mean(L4))▶QJ2
ΣLIST(L3)▶QJ11
ΣLIST(L4)▶QJ12
IF QJ11≥Q011 THEN M11=M11+1 END;
IF QJ12≥Q012 THEN M12=M12+1 END;
IF QJ2≥Q02 THEN M2=M2+1 END;
//
QJ11▶L5(J)
QJ2▶L6(J)
//
END;
//
SORT(L5)▶L5
SORT(L6)▶L6
{}▶L7
{}▶L8
{}▶L9
{}▶L0
//
N1,N2,[Q011,Q012,Q02],M11/M,M12/M,M2/M
END;
#end
//
```
##### mPU2.pas
```
//mPU2(simulation cycles M)/D.G.SCHRAUSSER/2025
//Permutation test in the random sampling model,
//randomized permutation, p-value not randomized, mP
//2 independent samples (x|g)
//e.g.mPU2(100)
#cas
mPU2(M):=
BEGIN
//L1L2 provided
//
{}▶L3;{}▶L4
{}▶L5;{}▶L6
0▶M11
0▶M12
0▶M02
0▶X
0▶J
SIZE(L1)▶N1
SIZE(L2)▶N2
N=N1+N2
//
MAKELIST(x+1,x,0,N-1)▶L7
MAKELIST(0,x,0,1)▶L51
MAKELIST(x+1,x,0,N1-1)▶L71
//
ABS(mean(L1)-mean(L2))▶Q02
ΣLIST(L1)▶Q011
ΣLIST(L2)▶Q012
//
MSGBOX("mPU")
WHILE J<M 
DO
//
FOR A FROM 1 TO N DO
{RANDOM(),L7(A)}▶L0(A) END;
//diff 
{}▶L9
SORT(L0)▶L31 //
FOR A FROM 1 TO N1 DO
L31(A)▶L51;L51(2)▶L6(A)
END;
sort(L0)▶L9
FOR A FROM 1 TO N DO
L9(A)▶L8;L8(2)▶L9(A) END;
{}▶L8
L9==L7▶V
//
IF DIFFERENCE(L6,L71)≠{} AND V=0 
THEN
J+1▶J
CONCAT(L1,L2)▶L8
FOR A FROM 1 TO  N1 DO
L8(L9(A))▶L3(A) END;
FOR A FROM 1 TO  N2 DO
L8(L9(N1+A))▶L4(A) END;
ABS(mean(L3)-mean(L4))▶QJ2
ΣLIST(L3)▶QJ11
ΣLIST(L4)▶QJ12
IF QJ11≥Q011 THEN M11=M11+1 END;
IF QJ12≥Q012 THEN M12=M12+1 END;
IF QJ2≥Q02 THEN M02=M02+1 END;
//
QJ11▶L5(J)
QJ2▶L6(J)
//
ELSE
X+1▶X
END; //IF diff
END; //M
//
SORT(L5)▶L5
SORT(L6)▶L6
{}▶L8
{}▶L0
//
X,J,N1,N2,[Q011,Q012,Q02],M11/M,M12/M,[M02/M]
END;
#end
//
```
##### mPV_.pas
```
//mPV_(simulation cycles M)/D.G.SCHRAUSSER/2025
//Permutation test in the random sampling model,
//randomized permutation, p-value not randomized, mP
//2 paired samples (x1|x2)
//e.g.mPV_(100)
#cas
mPV_(M):=
BEGIN
//L1()(2) provided
0▶M11;0▶M12;0▶M2
SIZE(L1)(1)▶N
//sum,Q0
ΣLIST(L1)▶L2;ΣLIST(L2.^2)▶Q02
L2(1)▶Q011;L2(2)▶Q012
//
MSGBOX("mPV")
FOR A FROM 1 TO M DO //mP
//
FOR I FROM 1 TO N DO
RANDINT(0,1)▶L8(I) END;
FOR J FROM 1 TO N DO
IF L8(J)=1 THEN REVERSE(L1(J))▶L3(J)
ELSE L1(J)▶L3(J) END;
END; //J
ΣLIST(L3)▶L4;ΣLIST(L4.^2)▶Q2
L4(1)▶Q11;L4(2)▶Q12
Q11▶L5(A)
Q12▶L6(A)
Q2▶L7(A)
IF Q11≥Q011 THEN M11=M11+1 END;
IF Q12≥Q012 THEN M12=M12+1 END;
IF Q2≥Q02 THEN M2=M2+1 END;
//
END;//mP
//
SORT(L5)▶L5;SORT(L6)▶L6;SORT(L7)▶L7
//n,Q011,Q012,Q02,p11,p12,p2
N,[Q011,Q012,Q02],M11/M,M12/M,M2/M
END;
#end
//
```
##### mZ.pas  
```
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
```

#### N

##### NBNMVTLG.pas
```
//NBNMVTLG(k,p[e],n,m)/D.G.SCHRAUSSER/2025
//e.g.NBNMVTLG(1,0.2,8,10)
#cas
NBNMVTLG(K,P,N,M):=
BEGIN
B=0
FOR I FROM 0 TO N-K DO
 ((K+I-1)!/(I!*(K-1)!))*P^K*(1-P)^I▶L4(I+1)
 B=B+L4(I+1)
END
D7=L4;L4={}
FOR I FROM 0 TO M-1 DO
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
```
##### NVTLG.pas
```
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
```

#### P

##### pCor.pas  
```
//pCor(correlation r,n)/D.G.SCHRAUSSER/2025  
//e.g.pCor(0.94,4)  
#cas  
pCor(r,n):=  
BEGIN  
t=(r*√(n-2))/√(1-r^2)  
p=STUDENT_CDF(n-2,t)  
2*p▶p2  
IF p>0.5 THEN 2*(1-p)▶p2 END;  
//t-value, p-value, p2  
[t],p,[p2]  
END;  
#end  
//  
```
##### PHC.pas  
```
//PHC(cell count a,b,c,d)/D.G.SCHRAUSSER/2025  
//e.g.PHC(17,12,14,24)  
//Phi- and tetrachoric correlation  
#cas  
PHC(a,b,c,d):=  
BEGIN  
a+b+c+d▶N  
a+b▶z1;c+d▶z2  
a+c▶s1;b+d▶s2  
z1/z2▶Z01;s1/s2▶S01  
IF z2<z1 THEN Z01=1/Z01 END;  
IF s2<s1 THEN S01=1/S01 END;  
VFX=(N*(a*d-b*c)^2)/((a+b)*(c+d)*(a+c)*(b+d))  
VFC=1-CHISQUARE_CDF(1,VFX)  
KPH=(a*d-b*c)/sqrt(((a+b)*(c+d)*(a+c)*(b+d)))  
KPM=sqrt(Z01*S01)  
KTET=cos(π/(1.+√(b*c/(a*d))))  
STET=sqrt((((((a+b)/N))*(((a+c)/N))*(((c+d)/N))*(((b+d)/N))/N)))  
STET=STET*(1/(((1/(sqrt(2*π)))*e^(-normald_icdf(((c+d)/N))^2/2))*((1/(sqrt(2*π)))*e^(-normald_icdf(((b+d)/N))^2/2))))  
ZTET=KTET/STET  
P=normald_cdf(ZTET)  
IF P>0.5 THEN  
P=1-P  
END;  
P*2▶P2  
//n,TET,z,p1,p2,phi,phimax,chi2,p2  
N,[KTET],[ZTET],P,[P2],[KPH,KPM],[VFX],[VFC]  
END;  
#end  
//  
```
##### PKR.pas  
```
//PKR()/D.G.SCHRAUSSER/2025  
//Partial corr rxy.z[pCor,ZCor]  
#cas  
PKR():=  
BEGIN  
//L1L2L3 provided  
size(L1)▶N  
df=N-2  
//rxy  
FOR I FROM 1 TO N DO  
L1(I)▶L5(1)  
L2(I)▶L5(2)  
L5▶L4(I)  
END;  
approx(correlation(L4))▶r0  
pCor(r0,N)(3)▶pr0  
//rxz  
FOR I FROM 1 TO N DO  
L1(I)▶L5(1)  
L3(I)▶L5(2)  
L5▶L4(I)  
END;  
approx(correlation(L4))▶r1  
pCor(r1,N)(3)▶pr1  
//ryz  
FOR I FROM 1 TO N DO  
L2(I)▶L5(1)  
L3(I)▶L5(2)  
L5▶L4(I)  
END;  
approx(correlation(L4))▶r2  
pCor(r2,N)(3)▶pr2  
//rxy.z  
rp=(r0-r1*r2)  
rp=rp/(sqrt(1-r1^2)*sqrt(1-r2^2))  
rp=approx(rp)  
ZCor(rp,N)(1)▶L0  
L0(1)*SQRT(N-2)▶zrp  
prp=NORMALD_CDF(zrp)  
IF prp>0.5 THEN prp=1-prp END;  
prp2=2*prp  
//pCor(rp,N)(3)▶p  
//df,rxy,p2,rxz,p2,ryz,p2,rxy.z,p2  
df,[r0,pr0],[r1,pr1],[r2,pr2],[rp,prp]  
END;  
#end  
//  
```

##### PRM1.pas  
```
//PRM1(n perm)/D.G.SCHRAUSSER/2025  
//e.g.PRM1(5)/permutation vector (p)n from L1  
#cas  
PRM1(N):=  
BEGIN  
//L1(N) provided  
{}▶L0  
{}▶L2  
FOR A FROM 1 TO N DO  
{RANDOM(),L1(A)}▶L0(A) END;  
//  
sort(L0)▶L2  
FOR A FROM 1 TO N DO  
L2(A)▶L8;L8(2)▶L2(A) END;  
//  
L2  
END;  
#end  
//  
```
##### PRM2.pas  
```
//PRM2(elements n)/D.G.SCHRAUSSER/2025  
//Complete permutation matrix (P)n of elements n to 1 class,  
//where P=n!  
//e.g.PRM2(3)  
#cas  
PRM2(n):=  
BEGIN  
MAKELIST(1,P,1,n+1)▶L1  
P=PERM(n,n)  
0▶L1(1)  
{}▶L2  
0▶M1  
1▶J  
0▶I  
0▶SW  
//  
WHILE I≠n AND L1(I)≤n DO  
FOR I FROM 1 TO n DO  
IF I=1 THEN L1(1)+1▶L1(1) END;  
IF I=n AND L1(I)>n THEN BREAK END;  
IF L1(I)>n THEN  
1▶L1(I);L1(I+1)+1▶L1(I+1)  
END;  
END;//I  
//  
FOR K FROM 1 TO n DO  
FOR L FROM K+1 TO n DO  
IF L1(K)=L1(L) THEN  
1▶SW  
BREAK;  
END;  
END;  
END;  
IF SW=0 THEN  
SUPPRESS(L1,n+1)▶L2(J);J+1▶J  
END;  
0▶SW  
END;//while  
//  
L2▶M1  
IF n=2 THEN  
M1=[[1,2],[2,1]]  
M1▶L2  
END;  
//  
P,M1  
END;  
#end  
//  
```
##### PRM3.pas  
```
//PRM3(elements n, class m)/D.G.SCHRAUSSER/2025  
//Complete permutation matrix w(P)n(km,kn-m) of n elements to class m, where P=n!/IIki!;n>=m  
//equivalent to combination without repetition Cn(m)  
//e.g.PRM3(6,3)[PRM3a]  
#cas  
PRM3(n,m):=  
BEGIN  
MAKELIST(1,P,1,n+1)▶L1  
0▶L1(1)  
{}▶L2  
0▶M1  
1▶J  
0▶I  
0▶SW  
//  
WHILE I≠m AND L1(I)<n DO  
FOR I FROM 1 TO m DO  
IF I=1 THEN L1(1)+1▶L1(1) END;  
IF I=m AND L1(I)>n THEN BREAK END;  
IF L1(I)>n THEN  
1▶L1(I)  
L1(I+1)+1▶L1(I+1)  
END;  
END;//I  
//  
FOR K FROM 1 TO m DO  
FOR L FROM K+1 TO m DO  
IF L1(K)=L1(L) OR L1(K)>L1(L) THEN //<---  
1▶SW  
END;  
END;  
END;  
IF SW=0 THEN  
SUPPRESS(L1,n+1)▶L2(J)  
J+1▶J  
END;  
0▶SW  
END;//while  
//  
//L2▶M1  
PRM3a(n,m)//  
END;  
#end  
//  
```
##### PRM3a.pas  
```
//PRM3a(elements n,class m)/D.G.SCHRAUSSER/2025  
//e.g.PRM3a(6,3)  
#cas  
PRM3a(N,M):=  
BEGIN  
{}▶L3  
COMB(N,M)▶P  
MAKELIST(x+1-1,x,1,N)▶L1  
//  
FOR J FROM 1 TO P DO  
FOR I FROM 1 TO M DO  
L2(J,I)▶L3(I)  
END;  
L3▶L4(J)▶M1  
END;  
FOR I FROM 1 TO P DO  
L4(I)▶L5;DIFFERENCE(L5,L1)▶L7(I)  
END;  
FOR I FROM 1 TO P DO  
CONCAT(L4(I),L7(I))▶L8(I)  
END;  
L4▶L2;L8▶L3  
{}▶L4  
{}▶L8  
{}▶L5  
{}▶L6  
{}▶L7  
L3▶M2  
P,M2  
END;  
#end  
//  
```
##### PRM4.pas  
```
//PRM4(elements n, class m)/D.G.SCHRAUSSER/2025  
//variation matrix w(V)n(m), where V=n^m;n>=m  
//e.g.PRM4(4,2)[PRM4a]  
#cas  
PRM4(n,m):=  
BEGIN  
MAKELIST(1,P,1,n+1)▶L1  
0▶L1(1)  
{}▶L2  
0▶M1  
1▶J  
0▶I  
0▶SW  
//  
WHILE I≠m AND L1(I)<n DO  
FOR I FROM 1 TO m DO  
IF I=1 THEN L1(1)+1▶L1(1) END;  
IF I=m AND L1(I)>n THEN BREAK END;  
IF L1(I)>n THEN  
1▶L1(I)  
L1(I+1)+1▶L1(I+1)  
END;  
END;//I  
//  
SUPPRESS(L1,n+1)▶L2(J);J+1▶J  
END;//while  
//  
//L2▶M1  
PRM4a(n,m)  
END;  
#end  
//  
```
##### PRM4a.pas  
```
//PRM4a(elements n, class m)/D.G.SCHRAUSSER/2025  
//e.g.PRM4a(4,3)  
#cas  
PRM4a(N,M):=  
BEGIN  
//L2 provided  
V=N^M  
X=M+1  
FOR I FROM 1 TO V DO  
L2(I)▶L3  
SUPPRESS(L3,X,N)▶L4(I)  
END;  
L4▶M1  
V,M1  
END;  
#end  
//  
```
##### PRM5.pas  
```
//PRM5(cases m)/D.G.SCHRAUSSER/2025  
//variation matrix w(V)2(m) for paired 2 sample design PV_,  
//where V=2^m  
//e.g.PRM5(3)  
#cas  
PRM5(N):=  
BEGIN  
M1=0  
2^N▶P  
X=−1  
0▶Z  
P/2▶A  
//  
FOR I FROM 1 TO N DO  
FOR J FROM 1 TO P DO  
X▶M1(J,I)  
Z=Z+1  
IF Z=A THEN X=X*−1;0▶Z; END;  
END;  
0▶Z  
// A=A/2 //  
A=A*0.5  
END;  
//  
M1▶L3  
P,M1  
END;  
#end  
//  
```
##### PRMDAT.pas  
```
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
```
#### Q

##### Q01_.pas
```
//Q01_()/D.G.SCHRAUSSER/2025
//Statistical parameters 1.0
//[L1:Raw]
//L2:Distribution
//L3:z-value
//L4:z´-value
#cas
Q01_():=
BEGIN
//L1 provided
SORT(L1)▶L2 //distr
SIZE(L1)▶N
mean(L1)▶AM
stddev(L1)▶SD
stddevp(L1)▶SD1
variance(L1)▶VA
VA1=VA*(N/(N-1)) //SD1^2
SEM=sqrt((VA1/N))
VQ=SD/AM
QGM= N NTHROOT(product(L1))
QHM=N/Σ(1/L1)
approx(MAKELIST(((L2(X)-AM)/SD),X,1,N))▶L3 //z
approx(MAKELIST(((L2(X)-AM)/SD1),X,1,N))▶L4 //z´
//
approx(N,[AM,SEM],SD,SD1,VA,VA1,VQ,[QGM,QHM])
END;
#end
//
```
##### Q02_.pas
```
//Q02_()/D.G.SCHRAUSSER/2025
//Statistical parameters 2.0
//[L1:Raw]
//L2:Distribution
//L3:z-value
#cas
Q02_():=
BEGIN
//L1 provided
SORT(L1)▶L2 //
SIZE(L1)▶N
mean(L1)▶AM
stddev(L1)▶SD
stddevp(L1)▶SD1
approx(MAKELIST(((L2(X)-AM)/SD),X,1,N))▶L3 //
Σ(L3.^3)/N▶A3
sqrt(6/N)▶SA3
Σ(L3.^4)/N-3▶A4
2*SA3▶SA4
Σ((L1 .- AM) .^ 3)*N/((N-1)*(N-2)*SD1^3)▶A31
A41=((N-1)*(N-2)*(N-3)*SD1^4)
EX1=Σ((L1 .- AM) .^ 4)*N*(N+1)
EX2=Σ((L1 .- AM) .^ 2)
EX2=3*EX2*EX2*(N-1)
A41=(EX1-EX2)/A41
NORMALD_CDF(A3/SA3)▶PA3
P2A3=2*PA3
IF PA3>0.5 THEN P2A3=2*(1-PA3) END;
NORMALD_CDF(A4/SA4)▶PA4
P2A4=2*PA4
IF PA4>0.5 THEN P2A4=2*(1-PA4) END;
//
approx(N,[A3,A31],A3/SA3,[P2A3],[A4,A41],A4/SA4,[P2A4])
END;
#end
//
```
#### R

##### rDiff.pas  
```
//rDiff(r1,n1,r2,n2)/D.G.SCHRAUSSER/2025  
//e.g.rDiff(0.78,12,0.34,8)[ZCor]  
#cas  
rDiff(R1,N1,R2,N2):=  
BEGIN  
ZCor(R1,N1)(1)▶L2  
L2(1)▶L1(1)  
ZCor(R2,N2)(1)▶L2  
L2(1)▶L1(2)  
L1(1)-L1(2)▶L2(1)  
sqrt((1/(N1-3))+1/(N2-3))▶L2(2)  
L2(1)/L2(2)▶L2(3)  
NORMALD_CDF(L2(3))▶L2(4)  
1-L2(4)▶L2(5)  
2*L2(5)▶L2(6)  
IF L2(5)>0.5 THEN  
2*L2(4)▶L2(6)  
END;  
//Zd,sZd,z,p,1-p,p2  
[L2(1),L2(2)],[L2(3)],L2(4),L2(5),[L2(6)]  
END;  
#end  
//  
```
##### RHO.pas
```
//RHO()/D.G.SCHRAUSSER/2025  
//Spearman's rank correlation coefficient rho rs/[pCor]  
#cas  
RHO():=  
BEGIN  
//L1()(2) provided  
size(L1)▶N  
mean(L1)▶L3  
MAKELIST((L1(I)(1)-L1(I)(2))^2,I,1,N)▶L2  
Σ(L2)▶SUM  
RHO=1-((6*SUM)/(N*(N^2-1)))  
pCor(RHO,N)▶L4  
//n,rho,r,p2rho  
approx(N,[RHO,correlation(L1)],L4(3))  
END;  
#end  
//
```

##### RNK.pas
```
//RNK()/D.G.SCHRAUSSER/2025
//L1 to ranking L3
#cas
RNK():=
BEGIN
//L1 provided
{}▶L2
{}▶L3
1▶R
0▶S1
0▶Q01
0▶V
SIZE(L1)▶N
SORT(L1)▶L2
FOR I FROM 2 TO N+1 DO
R▶L3(I-1)
IF L2(I-1)≠L2(I) THEN
IF S1=1 THEN
R=R+Q01
Q01=0;S1=0
1+V▶V
END;
R+1▶R
ELSE
Q01+1▶Q01;S1=1
END;
END;
Σ(L3)▶SR
//n,ties,Rsum,meanR
approx(N,V,SR,[SR/N])
END;
#end
//
```
#### T

##### TKV.pas
```
//TKV()/D.G.SCHRAUSSER/2025  
//Variance p/[C2V,pCor]  
#cas  
TKV():=  
BEGIN  
//L1L2 provided  
SIZE(L1)▶N  
variance(L1)▶s21  
variance(L2)▶s22  
N-2▶df  
C2V(2)  
approx(correlation(L6))▶r  
pCor(r,N)(2)▶pr  
approx(((s21-s22)*sqrt(N-2))/(2*sqrt(s21*s22*(1-r^2))))▶t  
STUDENT_CDF(df,t)▶p  
1-p▶p1  
2*p▶p2  
IF p2>1 THEN 2*(1-p)▶p2 END;  
df,[r],[pr],[t],p,p1,[p2]  
END;  
#end  
//  
```

##### TT_.pas
```
//TT_(y)/D.G.SCHRAUSSER/2025
//One-sample t-test for test variable y
//e.g TT_(5.3)
#cas
TT_(Y):=
BEGIN
//L1 provided
size(L1)▶N
N-1▶df
mean(L1)▶x
variance(L1)▶s2
approx((x-Y)/(sqrt(s2/(N-1))))▶t
p=STUDENT_CDF(df,t)
1-p▶p1
2*p▶p2
IF p2>1 THEN 2*(1-p)▶p2 END;
df,[t],p,p1,[p2]
END;
#end
//
```
##### TU_.pas
```
//TU_()/D.G.SCHRAUSSER/2025
//t-test for unpaired samples 
#cas
TU_():=
BEGIN
//L1L2 provided
0▶Sx1
0▶Sx2
SIZE(L1)▶n1
SIZE(L2)▶n2
n1+n2-2▶df
mean(L1)▶x1
mean(L2)▶x2
FOR I FROM 1 TO n1 DO
Sx1=Sx1+(L1(I)-x1)^2 END;
FOR I FROM 1 TO n2 DO
Sx2=Sx2+(L2(I)-x2)^2 END;
t=x1-x2
t=t/(√((Sx1+Sx2)/((n1-1)+(n2-1)))*√(1/n1+1/n2))
t=approx(t)
p=STUDENT_CDF(df,t)
p1=p
IF p>0.5 THEN p1=1-p END;
p2=2*p1
df,[t],p,p1,[p2]
END;
#end
//
```
##### TV_.pas
```
//TV_()/D.G.SCHRAUSSER/2025
//t-test for paired samples
#cas
TV_():=
BEGIN
//L1()(2) provided
size(L1)▶n
n-1▶df
FOR I FROM 1 TO n DO
L1(I)(1)-L1(I)(2)▶L2(I)
L2(I)^2▶L3(I)
END;
ΣLIST(L2)▶Sxd
ΣLIST(L3)▶Sxd2
t=Sxd/n
t = (t/((√((Sxd2-Sxd^2/n)/(n-1)))/(√n)))
t=approx(t)
p=STUDENT_CDF(df,t)
p▶p1
IF p>0.5 THEN 1-p▶p1 END;
2*p1▶p2
//
df,[t],p,p1,[p2]
END;
#end
//
```
##### tVTLG.pas
```
//tVTLG(t,df)/D.G.SCHRAUSSER/2025
//e.g.tVTLG(2.65,8)[AdvancedGraphing]
#cas
tVTLG(T857,D187):=
BEGIN
G25478=Gamma((D187+1)/2)/Gamma(D187/2)
P=∫(G25478*(D187*π)^(-1/2)*(1+(X^2/D187))^(-(D187+1)/2),X,−∞,T857)
T857▶C
D187▶D
G25478▶G
"Y=(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2))"▶V1
"Y<(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2)) AND Y>0 AND X<C"▶V2
"Y=(1/√(2*π))*e^((-1/2)*(X)^2)"▶V3
STARTAPP("Erweiterte_Grafiken");
STARTVIEW(1);
IF P>0.5 THEN P=1-P END;
P,[2*P]
END;
#end
//
```

#### V

##### VAR1.pas  
```
//VAR1(n var)/D.G.SCHRAUSSER/2025  
//e.g.VAR1(5)/variation vector (v)n from L1  
#cas  
VAR1(N):=  
BEGIN  
//L1(N) provided  
{}▶L2  
FOR A FROM 1 TO N DO  
L1(RANDINT(1,N))▶L2(A) END;  
//  
L2  
END;  
#end  
//  
```
##### VFC0.pas  
```
//VFC0(cell count a,b,c,d)/D.G.SCHRAUSSER/2025  
//2×2 chi-squared test for independence  
//Observed frequencies abcd fb  
//Chi-squared, McNemar with 2-tailed p  
//e.g.VFC0(17,12,14,24)  
#cas  
VFC0(a,b,c,d):=  
BEGIN  
a+b+c+d▶N  
a+b▶z1;c+d▶z2  
a+c▶s1;b+d▶s2  
z1/z2▶Z01;s1/s2▶S01  
VFX=(N*(a*d-b*c)^2)/((a+b)*(c+d)*(a+c)*(b+d))  
VFC=1-CHISQUARE_CDF(1,VFX)  
MNX=(b-c)^2/(b+c)  
//McNemar Yates corr.  
IF b+c<30 AND b+c>20 THEN  
MNX=(ABS(b-c)-0.5)^2/(b+c)  
END  
pMNX=1-CHISQUARE_CDF(1,MNX)  
//n,mnchi2,mnp2,chi2,p2  
N,[MNX],[pMNX],[VFX],[VFC]  
END;  
#end  
//  
```
##### VFCH.pas
```
//VFCH(cell count a,b,c,d)/D.G.SCHRAUSSER/2025  
//2×2 chi-squared test for independence  
//L0: Observed frequencies abcd fb  
//L1: Expected frequencies fe  
//L2,L3,L4: Probabilities p(A^B), p(B|A), p(A|B)  
//L5: Chi-squared,(w. Yates corr.)  
//L6: 2-tailed sig. p2  
//Chi-square McNemar (w. Yates corr.) with p2  
//e.g.VFCH(17,12,14,24)  
//  
#cas  
VFCH(a,b,c,d):=  
BEGIN  
a▶L0(1)  
b▶L0(2)  
c▶L0(3)  
d▶L0(4)  
a+b+c+d▶N  
a+b▶z1  
c+d▶z2  
a+c▶s1  
b+d▶s2  
z1/z2▶Z01  
s1/s2▶S0  
//p  
a/N▶L1(1)  
b/N▶L1(2)  
z1/N▶L1(5)  
c/N▶L1(3)  
d/N▶L1(4)  
z2/N▶L1(6)  
s1/N▶L1(7)  
s2/N▶L1(8)  
//fe  
L1(7)*z1▶L2(1)  
L1(8)*z1▶L2(2)  
L1(7)*z2▶L2(3)  
L1(8)*z2▶L2(4)  
//p(B|A)  
L0(1)/s1▶L3(1)  
L0(2)/s2▶L3(2)  
L0(3)/s1▶L3(3)  
L0(4)/s2▶L3(4)  
//p(A|B)  
L0(1)/z1▶L4(1)  
L0(2)/z1▶L4(2)  
L0(3)/z2▶L4(3)  
L0(4)/z2▶L4(4)  
//  
//CHI2  
L0(1)-L2(1)▶L5(1);L5(1)^2▶L6(1);L6(1)/L2(1)▶L5(1)  
L0(2)-L2(2)▶L5(2);L5(2)^2▶L6(1);L6(1)/L2(2)▶L5(2)  
L0(3)-L2(3)▶L5(3);L5(3)^2▶L6(1);L6(1)/L2(3)▶L5(3)  
L0(4)-L2(4)▶L5(4);L5(4)^2▶L6(1);L6(1)/L2(4)▶L5(4)  
L5(1)+L5(2)▶L5(5)  
L5(3)+L5(4)▶L5(6)  
L5(1)+L5(3)▶L5(7)  
L5(2)+L5(4)▶L5(8)  
L5(7)+L5(8)▶L5(9)  
1-CHISQUARE_CDF(1,L5(1))▶L6(1)  
1-CHISQUARE_CDF(1,L5(2))▶L6(2)  
1-CHISQUARE_CDF(1,L5(3))▶L6(3)  
1-CHISQUARE_CDF(1,L5(4))▶L6(4)  
1-CHISQUARE_CDF(1,L5(5))▶L6(5)  
1-CHISQUARE_CDF(1,L5(6))▶L6(6)  
1-CHISQUARE_CDF(1,L5(7))▶L6(7)  
1-CHISQUARE_CDF(1,L5(8))▶L6(8)  
1-CHISQUARE_CDF(1,L5(9))▶L6(9)  
//Yates corr.  
IF L2(1)<7  AND L2(1)>4  OR  
L2(2)<7 AND L2(2)>4  OR  
L2(3)<7 AND L2(3)>4  OR  
L2(4)<7 AND L2(4)>4  
THEN  
(N*(ABS((L0(1)*L0(4)-L0(2)*L0(3))-N/2))^2/(z1*z2*s1*s2))▶L5(9)  
1-CHISQUARE_CDF(1,L5(9))▶L6(9)  
END;  
MNX=(b-c)^2/(b+c)  
//Yates corr.  
IF b+c<30 AND b+c>20 THEN  
MNX=(ABS(b-c)-0.5)^2/(b+c)  
END   
pMNX=1-CHISQUARE_CDF(1,MNX)  
//n,mnchi2,mnp2,chi2,p2  
N,[MNX],[pMNX],[L5(9)],[L6(9)]  
END;  
#end  
//  
```
#### Z

##### ZCor.pas
```
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
```

<br>

### User functions

<br>

`define.cas` [Shift][Define]...  

<br>

#### A

##### ADDP(p,n)  
`1.000-(1.000-P)^N`  

##### AEv(Ev,Tv)  
`√(2^E*T)/T`

##### AvS(A0,S0,S)  
`A*e^(0.5*LN(S^(-1)*B))`

##### AvSk(A0,S steps k),e.g.AvSk(100,3)  
`A*((2) NTHROOT (2))^K`

##### AvTv(Av0,Tv0,Tv)  
`A*e^(0.5*LN((T/B)))`

##### AvTvk(Av0,Tv steps k),e.g.AvTvk(8,-3)  
`A*(√2^K)`

#### B

##### BINOM(a,b)  
`Σ(((A+B)!/(I!*(A+B-I)!))*2.000^(-I)*2.000^(-(A+B-I)),I,0.000,A)`  

#### C

##### Cf2(R)'Cohen's f²'  
`R^2/(1-R^2)`  

##### Ch(p1,p2)'Cohen's h for proportion differences'  
`2*ASIN(√A)-2*ASIN(√B)`  

##### ChA(p2,h)  
`SIN((1/2)*(2*ASIN(√B)+H))^2`  

##### ChB(p1,h)
`(-SIN((1/2)*(-2*ASIN(√A)+H)))^2`

##### CIr(P,S,R),CIr(ci%,sdx or sdy,rxy),e.g.CIr(0.99,0.342,0.98)   
`NORMALD_CDF(1-(1-P)/2)*S*√(1-R^2)`  

##### CIx [CIx(B,C,A),CIx(n,ci%,sd),e.g.6.7+CIx(10,0.99,1.676)]  
`STUDENT_ICDF(B-1,1-((1-C)/2))*√((A^2)*(B/(B-1))/B)`  

#### D

##### D2R(deg)  
`X/180.000*π`  

#### E

##### EFG(x1,L1)'epsilon, Cohen's d'  
`(A-mean(L1))/stddevp(L1)`  

##### EFR(x1,L1,R)'epsilon, Cohen's d for paired samples'  
`((A-mean(L1))/stddevp(L1))/√(1-R)`  

##### Ev(Tv,Av)'exposure value'  
`(LN(2))^(-1)*LN(T*A^2)`

#### F

##### FMCORR(R,n)  
`A^2.000*(B-4.000)/(3.000*(-(A^2.000)+1.000))`  


#### H
 
##### HM_[e.g.HM_(L2)]  
`SIZE(L1)/Σ((L1(B))^(-1),B,1,SIZE(L1))`  

#### I

##### ISOA(iso°)  
`10^(0.1*(S-1))`  

##### ISOL(iso)  
`(10*LN(S)/LN(10))+1`  


#### M

##### MCORR(r1,r2,r3)  
`√((A^2.000+B^2.000-2.000*C*A*B)/(1.000-C^2.000))`  

##### mr(r1,n1,r2,n2)  
`(e^(2*(((0.5*LN(((1+A)/(1-A)))*(B-3))+(0.5*LN(((1+C)/(1-C)))*(D-3)))/((B-3)+(D-3))))-1)/(e^(2*(((0.5*LN(((1+A)/(1-A)))*(B-3))+(0.5*LN(((1+C)/(1-C)))*(D-3)))/((B-3)+(D-3))))+1)`  

##### mZ(r1,n1,r2,n2)  
`((0.5*LN(((1+A)/(1-A)))*(B-3))+(0.5*LN(((1+C)/(1-C)))*(D-3)))/((B-3)+(D-3))`  


#### N

##### NBINOM(k,p,n)  
`Σ(((K+I-1.000)!/(I!*(K-1.000)!))*P^K*(1.000-P)^I,I,0.000,N-K)`  

##### nk(N,K)  
`N!/(K!*(N-K)!)`  

##### npz(x,am,sd,N)'p>=z quantity at N',e.g.npz(160,100,15,8*10^9)
`(1-NORMALD_CDF(((X-A)/S)))*N`

#### P

##### p2F(a,b)  
`(1-CHISQUARE_CDF(1,((A-((A+B)/2))^2/((A+B)/2))+((B-((A+B)/2))^2/((A+B)/2))))/2`  

##### p4F(a,b,c,d)  
`(1-CHISQUARE_CDF(1,((A+B+C+D)*(A*D-B*C)^2/((A+B)*(C+D)*(A+C)*(B+D)))))/2`  

##### p4FY(a,b,c,d) Yates corr 4<fe<7  
`(1-CHISQUARE_CDF(1,((A+B+C+D)*(ABS(A*D-B*C)-((A+B+C+D)/2))^2/((A+B)*(C+D)*(A+C)*(B+D)))))/2`  

##### PHI(a,d,b,c)  
`(A*D-B*C)/(sqrt((A+C)*(B+D)*(A+B)*(C+D)))`  

##### pMCORR(n,R)  
`(1-FISHER_CDF(3,(B-4),(A^2*(B-4)/(3*(-(A^2)+1)))))/2`  

##### pMN(b,c)  
`(1-CHISQUARE_CDF(1,((A-B)^2/(A+B))))/2`  

##### pMNY(b,c) Yates corr 20<b+c<30  
`(1-CHISQUARE_CDF(1,((ABS(A-B)-0.5)^2/(A+B))))/2`  

##### POL(x)  
`polar_coordinates(X)`  

##### pPHI(a,d,b,c)  
`(1-CHISQUARE_CDF(1,((A*D-B*C)/(√((A+C)*(B+D)*(A+B)*(C+D))))^2*(A+B+C+D)))/2`  

##### prbis(L1,L2)  
`normald_cdf((((mean(L1)-mean(L2))/stddev(CONCAT(L1,L2)))*SIZE(L1)*SIZE(L2)/((1/(√(2*π)))*e^(-(NORMALD_ICDF((SIZE(L2)/SIZE(CONCAT(L1,L2))))^2)/2)*SIZE(CONCAT(L1,L2))^2))/(√(SIZE(L1)*SIZE(L2))/((√SIZE(CONCAT(L1,L2))*SIZE(CONCAT(L1,L2))*1/(√(2*π)))*e^(-(NORMALD_ICDF((SIZE(L2)/SIZE(CONCAT(L1,L2))))^2)/2))))`  

##### prbisR(L1,L2)  
`normald_cdf(((size(L1)*size(L2)+(((size(L1))^2+size(L1))/2)-ΣLIST(L1)-size(L1)*size(L2)/2)/(sqrt(size(L1)*size(L2)*(size(L1)+size(L2)+1)/12))))`  

##### prr(r1,r2,n1,n2)  
`NORMALD_CDF(((0.5*LN(((1+A)/(1-A)))-0.5*LN(((1+B)/(1-B))))/(√((1/(C-3))+1/(D-3)))))`  

##### prtet(b,c,a,d)  
`NORMALD_CDF((COS((π/(1+√(B*C/(A*D)))))/(√(((A+B)/(A+B+C+D))*((A+C)/(A+B+C+D))*((C+D)/(A+B+C+D))*((B+D)/(A+B+C+D))/(A+B+C+D))*(1/(((1/(√(2*π)))*e^(-(NORMALD_ICDF(((C+D)/(A+B+C+D)))^2)/2))*((1/(√(2*π)))*e^(-(NORMALD_ICDF(((B+D)/(A+B+C+D)))^2)/2)))))))`  

##### pRW(L1,L2)  
`STUDENT_CDF(SIZE(L1)-2,((correlation(L1,L2)*√(SIZE(L1)-2))/(√(1-correlation(L1,L2)^2))))`  

##### pRWx(n,r)  
`STUDENT_CDF(B-2,((A*√(B-2))/(√(1-A^2))))`  

##### prxy_z(rxy_z,n)  
`NORMALD_CDF(0.5*LN(((1+A)/(1-A)))*√(B-2))`  

##### PTG(a,b)  
`√(A^2+B^2)`  

##### pTKV(L1,L2)  
`STUDENT_CDF(SIZE(L1)+SIZE(L2)-2,(((variance(L1)-variance(L2))*√(SIZE(L1)-2))/(2*√(variance(L1)*variance(L2)*(1-correlation(L1,L2))))))`  

##### pTT_(L1,y)  
STUDENT_CDF(SIZE(L1)-1,((mean(L1)-A)/(√(stddev(L1)^2/`(SIZE(L1)-1)))))`  

##### pTU_(L1,L2)  
`STUDENT_CDF(SIZE(L1)+SIZE(L2)-2,(mean(L1)-mean(L2))/(√((ΣLIST(MAKELIST((L1(A)-mean(L1))^2,A,1,SIZE(L1)))+ΣLIST(MAKELIST((L2(A)-mean(L2))^2,A,1,SIZE(L2))))/(SIZE(L1)-1+SIZE(L2)-1))*(√(1/SIZE(L1))+√(1/SIZE(L2)))))`  

##### pTUX(n1,n2,x1,x2,s21,s22)  
`STUDENT_CDF(D+F-2,((A-B)/(√((C*D+E*F)/(D-1+F-1))*(√(1/D)+√(1/F)))))`

##### pTV_(L1)  
`student_cdf(size(L1)-1,ΣLIST(MAKELIST(L1(A)-(L2(A)),A,1,size(L1)))/(size(L1))/(√((ΣLIST(MAKELIST((L1(A)-(L2(A)))^2,A,1,size(L1)))-ΣLIST(MAKELIST(L1(A)-(L2(A)),A,1,size(L1)))^2/(size(L1)))/(size(L1)-1))*1/(√(size(L1)-1))))`  

##### pz4F(a,b,c,d)[e.g.pz4F(11,20,80,58)]  
`NORMALD_CDF(((D-(A+B+C+D)*((D+B)*(C+D)/(A+B+C+D)^2))/(√((A+B+C+D)*(1-((D+B)*(C+D)/(A+B+C+D)^2))-(A+B+C+D)*(A+B+C+D-1)*((D+B)*(C+D)/(A+B+C+D)^2)*(((D+B)*(C+D)/(A+B+C+D)^2)-((D+B-1)*(C+D-1)/(A+B+C+D-1)^2))))))`  

##### pzBN(a,b)  
`NORMALD_CDF(((A-(A+B)/2)/(√((A+B)/4))))`  


#### R

##### R2D(rad)  
`X/π*180.000`  

##### rbis(L1,L2)  
`((mean(L1)-mean(L2))/stddev(CONCAT(L1,L2)))*SIZE(L1)*SIZE(L2)/((1/(√(2*π)))*e^(-(NORMALD_ICDF((SIZE(L2)/SIZE(CONCAT(L1,L2))))^2)/2)*SIZE(CONCAT(L1,L2))^2)`  

##### rbisR(L1,L2)  
`(2/(SIZE(L1)+SIZE(L2)))*(mean(L1)-mean(L2))`  

##### RED(r)  
`A^2*100`  

##### RND1(n)  
`MAKELIST(RANDNORM,A,1,B)`  

##### RND2(n)  
`MAKELIST(RANDOM,A,1,B`)  

##### rpbis(L1,L2)  
`(mean(L1)-mean(L2))/stddev(CONCAT(L1,L2))*√(SIZE(L1)*SIZE(L2)/(SIZE(CONCAT(L1,L2)))^2)`  

##### rxy(x1,x2)  
`approx(correlation(L1,L2))`  

##### rtet(b,c,a,d),rad  
`COS((π/(1+√(B*C/(A*D)))))`  

##### rxy_z(rxy,rxz,ryz)  
`(A-B*C)/(√(1-B^2)*√(1-C^2))`  

##### ry_xz(rxy,rxz,ryz)  
`(A-B*C)/(sqrt(1-B^2))`  

##### rZ(Z)  
`(e^(2*A)-1)/(e^(2*A)+1)`  

#### S

##### SCR(n,k,R)  
`1.00-((A-3.00)/(A-B-2.00))*((1.00-C^2.00)+((2.00/(A-B)))*(1.00-C^2.00)^2.00)`  

##### SMG [SMG(A,B),SMG(sd,n)]  
`√((A^2)*(B/(B-1))/B)`  

##### SQR(x)  
`A^2`  

##### srbis(L1,L2)  
`√(SIZE(L1)*SIZE(L2))/((√SIZE(CONCAT(L1,L2))*SIZE(CONCAT(L1,L2))*1/(√(2*π)))*e^(-(NORMALD_ICDF((SIZE(L2)/SIZE(CONCAT(L1,L2))))^2)/2))`  

##### srtet(b,c,a,d)  
`√(((A+B)/(A+B+C+D))*((A+C)/(A+B+C+D))*((C+D)/(A+B+C+D))*((B+D)/(A+B+C+D))/(A+B+C+D))*(1/(((1/(√(2*π)))*e^(-(NORMALD_ICDF(((C+D)/(A+B+C+D)))^2)/2))*((1/(√(2*π)))*e^(-(NORMALD_ICDF(((B+D)/(A+B+C+D)))^2)/2))))`  

##### sumd2(L1)  
`ΣLIST(MAKELIST((L1(A)-(L2(A)))^2,A,1,SIZE(L1)))`  
CAS input  
`L4:=ΣLIST(L3:=MAKELIST((L1(x)-(L2(x)))^2,x,1,size(L1)))`  
`L4:=ΣLIST(L3:=MAKELIST(L1(x)-(L2(x)),x,1,size(L1)))`  
`L4:=ΣLIST(L3:=MAKELIST(L1(x)-(L2(x)),x,1,size(L1)))^2`  

##### sumx2(L1,L2)  
CAS input  
`ΣLIST(L3:=approx(MAKELIST((L1(x)-mean(L1))^2,x,1,size(L1))))`  

  
#### T

##### TAU.pas
`//TAU()/D.G.SCHRAUSSER/2025`  
`//Kendall's τ coefficient (tau-a)`  
`#cas`  
`TAU():=`  
`BEGIN`  
`//L1,L2 provided`  
`SIZE(L1)▶N`  
`FOR I FROM 1 TO N-1 DO`  
`((SIGN(L1(I)-L1(I+1))))*((SIGN(L2(I)-L2(I+1))))▶L3(I)`  
`IF L3(I)=1 THEN 0▶L3(I) END;`  
`IF L3(I)=-1 THEN 1▶L3(I) END;`  
`888▶M1(L1(I),L2(I))`  
`END;`  
`888▶M1(L1(N),L2(N))`  
`//(N*(N-1)/2-2*ΣLIST(L3))/(N*(N-1)/2)▶tau_a`  
`approx(1-2*ΣLIST(L3)/(N*(N-1)/2))▶L4(1)`  
`approx((√(N*(N-1)))/(√(2*(2*N+5)))*3*L4(1))▶L4(2)`  
`NORMALD_CDF(L4(2))▶L4(3)`  
`1-L4(3)▶L4(4)`  
`L4(4)*2▶L4(5)`  
`IF L4(3)<0.5 THEN 2*L4(3)▶L4(5)`  
`((COMB(N,2)-ΣLIST(L3))-ΣLIST(L3))/√((1/18)*N*(N-1)*(2*N+5))▶L4(6)`  
`END;`  
`//taua,z,p,1-p,p2`  
`[L4(1)],[L4(2)],L4(3),L4(4),[L4(5)]`  
`END;`  
`#end`  
`//`  

##### TEv(Ev,Av)  
`2^E/A^2`

##### tr(r,n)  
`(R*√(N-2))/(√(1-R^2))`  

##### TRW(L1,L2)  
`(correlation(L1,L2)*√(SIZE(L1)-2))/(√(1-correlation(L1,L2)^2))`  

##### tTKV(L1,L2)  
`((variance(L1)-variance(L2))*sqrt(size(L1)-2))/(2*sqrt(variance(L1)*variance(L2)*(1-correlation(L1,L2))))`  

##### tTT_(L1,y)  
`(mean(L1)-A)/(√(stddev(L1)^2/(SIZE(L1)-1)))`  

##### tTU_(L1,L2)
`(mean(L1)-mean(L2))/(sqrt((ΣLIST(MAKELIST((L1(x)-mean(L1))^2,x,1,size(L1)))+
ΣLIST(MAKELIST((L2(x)-mean(L2))^2,x,1,size(L2))))/
(size(L1)-1+size(L2)-1))*(sqrt(1/size(L1))+sqrt(1/size(L2))))` 

##### tTUX(x1,x2,s21,n1,s22,n2)  
`(A-B)/(√((C*D+E*F)/(D-1+F-1))*(√(1/D)+√(1/F)))`   

##### tTV_(L1)  
`ΣLIST(MAKELIST(L1(A)-(L2(A)),A,1,size(L1)))/(size(L1))/(√((ΣLIST(MAKELIST((L1(A)-(L2(A)))^2,A,1,size(L1)))-ΣLIST(MAKELIST(L1(A)-(L2(A)),A,1,size(L1)))^2/(size(L1)))/(size(L1)-1))*1/(√(size(L1)-1)))`  


#### U

##### U_1(L1,L2)  
`SIZE(L1)*SIZE(L2)+(((SIZE(L1))^2+SIZE(L1))/2)-ΣLIST(L1)`  

##### U_2(L1,L2)  
`SIZE(L1)*SIZE(L2)+(((SIZE(L2))^2+SIZE(L2))/2)-ΣLIST(L2)`  

#### X

##### x2F(a,b)  
`((A-((A+B)/2))^2/((A+B)/2))+(B-((A+B)/2))^2/((A+B)/2)`  

##### x4F(a,b,c,d)  
`(A+B+C+D)*(A*D-B*C)^2/((A+B)*(C+D)*(A+C)*(B+D))`  

##### x4FY(a,b,c,d) Yates corr 4<fe<7  
`(A+B+C+D)*(ABS(A*D-B*C)-((A+B+C+D)/2))^2/((A+B)*(C+D)*(A+C)*(B+D))`  

##### xMN(b,c)  
`(A-B)^2/(A+B)`  

##### xMNY(b,c) Yates corr 20<b+c<30  
`(ABS(A-B)-0.5)^2/(A+B)`  

##### xPHI(a,d,b,c)  
`(((A*D-B*C)/(√((A+C)*(B+D)*(A+B)*(C+D)))))^2*(A+B+C+D)`  


#### Z

##### z4F(a,b,c,d)  
`(D-(A+B+C+D)*((D+B)*(C+D)/(A+B+C+D)^2))/(√((A+B+C+D)*(1-((D+B)*(C+D)/(A+B+C+D)^2))-(A+B+C+D)*(A+B+C+D-1)*((D+B)*(C+D)/(A+B+C+D)^2)*(((D+B)*(C+D)/(A+B+C+D)^2)-((D+B-1)*(C+D-1)/(A+B+C+D-1)^2))))`  

##### zBN(a,b)  
`(A-(A+B)/2)/(√((A+B)/4))`  

##### Zr(r)  
`0.5*LN((1+A)/(1-A))`  

##### zrbis(L1,L2)  
`(((mean(L1)-mean(L2))/stddev(CONCAT(L1,L2)))*SIZE(L1)*SIZE(L2)/((1/(√(2*π)))*e^(-(NORMALD_ICDF((SIZE(L2)/SIZE(CONCAT(L1,L2))))^2)/2)*SIZE(CONCAT(L1,L2))^2))/(√(SIZE(L1)*SIZE(L2))/((√SIZE(CONCAT(L1,L2))*SIZE(CONCAT(L1,L2))*1/(√(2*π)))*e^(-(NORMALD_ICDF((SIZE(L2)/SIZE(CONCAT(L1,L2))))^2)/2)))`  

##### zrbisR(L1,L2)  
`(size(L1)*size(L2)+(((size(L1))^2+size(L1))/2)-ΣLIST(L1)-size(L1)*size(L2)/2)/(sqrt(size(L1)*size(L2)*(size(L1)+size(L2)+1)/12))`  

##### zrr(r1,r2,n1,n2)  
`(0.5*LN((1+A)/(1-A))-0.5*LN((1+B)/(1-B)))/(√(1/(C-3)+1/(D-3)))`  
 
##### zrxy_z(rxy_z,n)  
`0.5*LN(((1+A)/(1-A)))*√(B-2)`  

##### ZWERT(x1,x,s)  
`(A-B)/C`  

##### zVAL(L1),e.g.L2:=zVAL(L1)  
`approx(MAKELIST(((L1(X)-mean(L1))/stddev(L1)),X,1,SIZE(L1)))`  

##### zVALp(L1),e.g.L3:=zVAL(L1)  
`approx(MAKELIST(((L1(X)-mean(L1))/stddevp(L1)),X,1,SIZE(L1)))`  


<br>
<br>

### Application functions

#### Function

##### F01.pas  
`//F01()/D.G.SCHRAUSSER/2022`  
`//Function: Equations 1.0`  
`EXPORT F01()`  
`BEGIN`  
`"√(1-((X-W)/A)^2)*A+V"▶F1;`  
`"−√(1-((X-W)/A)^2)*A+V"▶F2;`  
`"√(1-((X-T)/B)^2)*B+U"▶F3;`  
`"-√(1-((X-T)/B)^2)*B+U"▶F4;`  
`"√(1-((X-R)/C)^2)*C+S"▶F5;`  
`"-√(1-((X-R)/C)^2)*C+S"▶F6;`  
`200▶A;`  
`150▶B;`  
`344▶C;`  
`1▶W;`  
`450▶T;`  
`1000▶R;`  
`"Function: Equations 1.0"`  
`END;`  
`//`  

##### F02.pas  
`//F02()/D.G.SCHRAUSSER/2022`  
`//Function: Equations 2.0`  
`EXPORT F02()`  
`BEGIN`  
`"NORMALD_CDF(0,1,X)"▶F1;`  
`"NORMALD(0,1,X)"▶F2;`  
`"STUDENT(50,X)"▶F3;`  
`"STUDENT_CDF(50,X)"▶F4;`  
`"CHISQUARE(1,X)"▶F5;`  
`"CHISQUARE_CDF(1,X)"▶F6;`  
`"FISHER_CDF(25,3,X)"▶F7;`  
`"FISHER(25,3,X)"▶F8;`  
`"0"▶F9;`  
`"0"▶F0;`  
`"Function: Equations 2.0"`  
`END;`  
`//`  

##### F03.pas  
`//F03()/D.G.SCHRAUSSER/2025`  
`//Function: Equations 3.0`  
`//F3-7:Derivatives of the standard normal distribution function, f'(z)-f'''''(z)`  
`EXPORT F03()`  
`BEGIN`  
`"NORMALD_CDF(0,1,X)"▶F1;`  
`"NORMALD(0,1,X)"▶F2;`  
`"∂((1/√(2*π))*e^((-1/2)*X^2),X=X)"▶F3;`  
`"∂(∂((1/√(2*π))*e^((-1/2)*X^2),X),X)"▶F4;`  
`"∂(∂(∂((1/√(2*π))*e^((-1/2)*X^2),X),X),X)"▶F5;`  
`"∂(∂(∂(∂((1/√(2*π))*e^((-1/2)*X^2),X),X),X),X)"▶F6;`  
`"∂(∂(∂(∂(∂((1/√(2*π))*e^((-1/2)*X^2),X),X),X),X),X)"▶F7;`  
`"0"▶F8;`  
`"0"▶F9;`  
`"0"▶F0;`  
`"Function: Equations 3.0"`  
`END;`  
`//`  

##### F04.pas  
`//F04()/D.G.SCHRAUSSER/2025`  
`//Function: Equations 4.0`  
`//F3:Derivative of Gamma, f'(x)`  
`//F5-7:Derivatives of the exponential function, f(x)={f'(x)-f'''(x)...}`  
`EXPORT F04()`  
`BEGIN`  
`"CAS.Gamma(X)"▶F1;`  
`"(X)!"▶F2;`  
`"∂(Gamma(X),X=X)"▶F3;`  
`"EXP(X)"▶F4;`  
`"∂(e^X,X = X)"▶F5;`  
`"∂(∂(e^X,X=X),X=X)"▶F6;`  
`"∂(∂(∂(e^X,X=X),X=X),X=X)"▶F7;`  
`"0"▶F8;`  
`"0"▶F9;`  
`"0"▶F0;`  
`"Function: Equations 4.0"`  
`END;`  
`//`  

##### F05.pas  
`//F05()/D.G.SCHRAUSSER/2025`  
`//Function: Equations 5.0`  
`//F2-5,F7-0:Derivatives of the circular function, f'(t)-f''''(t)`  
`EXPORT F05()`  
`BEGIN`  
`"√(1-X^2)"▶F1;`  
`"∂(√(1-X^2),X)"▶F2;`  
`"∂(∂(√(1-X^2),X),X)"▶F3;`  
`"∂(∂(∂(√(1-X^2),X),X),X)"▶F4;`  
`"∂(∂(∂(∂(√(1-X^2),X),X),X),X)"▶F5;`  
`"-√(1-X^2)"▶F6;`  
`"∂(-√(1-X^2),X)"▶F7;`  
`"∂(∂(-√(1-X^2),X),X)"▶F8;`  
`"∂(∂(∂(-√(1-X^2),X),X),X)"▶F9;`  
`"∂(∂(∂(∂(-√(1-X^2),X),X),X),X)"▶F0;`  
`"Function: Equations 5.0"`  
`END;`  
`//`  

##### F06.pas  
`//F06()/D.G.SCHRAUSSER/2025`  
`//Function: Equations 6.0`  
`//F3-6:Derivatives of Student's-t, f'(t)-f''''(t)`
`EXPORT F06()`  
`BEGIN`  
`"STUDENT_CDF(D,X)"▶F1;`  
`"(Gamma(((D+1)/2))/Gamma((D/2)))*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2)"▶F2;`  
`"∂(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X)"▶F3;`  
`"∂(∂(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X),X)"▶F4;`  
`"∂(∂(∂(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X),X),X)"▶F5;`  
`"∂(∂(∂(∂(G*(D*π)^(-1/2)*(1+(X^2/D))^(-(D+1)/2),X),X),X),X)"▶F6;`  
`""▶F7;`  
`""▶F8;`  
`""▶F9;`  
`""▶F0;`  
`"Function: Equations 6.0"`  
`END;`  
`//`  

##### F06_.pas 
```
//F06_(df)/D.G.SCHRAUSSER/2025
//Derivatives of Student's-t
//e.g.F06_(5)[F06]
#cas
F06_(DF):=
BEGIN
F06
DF▶D
G=Gamma(((DF+1)/2))/Gamma((DF/2))
D,G
END;
#end
//
```
##### F07.pas  
`//F07()/D.G.SCHRAUSSER/2025`  
`//Function: Equations 7.0`  
`//F3-6:Derivatives of chi², f'(t)-f''''(t)`  
`EXPORT F07()`  
`BEGIN`  
`"CHISQUARE_CDF(D,X)"▶F1;`  
`"(1/(2^(D/2)*G))*X^((D/2)-1)*e^(-X/2)"▶F2;`  
`"∂((1/(2^(D/2)*G))*X^((D/2)-1)*e^(-X/2),X)"▶F3;`  
`"∂(∂((1/(2^(D/2)*G))*X^((D/2)-1)*e^(-X/2),X),X)"▶F4;`  
`"∂(∂(∂((1/(2^(D/2)*G))*X^((D/2)-1)*e^(-X/2),X),X),X)"▶F5;`  
`"∂(∂(∂(∂((1/(2^(D/2)*G))*X^((D/2)-1)*e^(-X/2),X),X),X),X)"▶F6;`  
`""▶F7;`  
`""▶F8;`  
`""▶F9;`  
`""▶F0;`  
`"Function: Equations 7.0"`  
`END;`  
`//`  

##### F07_.pas
```
//F07_(df)/D.G.SCHRAUSSER/2025
//Derivatives of chi²
//e.g.F07_(1)[F07]
#cas
F07_(DF):=
BEGIN
F07
DF▶D
G=Gamma(DF/2)
D,G
END;
#end
//
```
<br>

#### Graph 3D


##### F01Z.pas  
`//F01Z()/D.G.SCHRAUSSER/2025`  
`//Graph 3D: Equations 1.0`  
`//FZ1-2:Gamma`  
`//FZ4-9:Spherical functions`  
`//FZ0:Sine`  
`EXPORT F01Z()`  
`BEGIN`  
`"CAS.Gamma(Y)"▶FZ1;`  
`"X^(Y-1)*e^(-X)"▶FZ2;`  
`"(1/(2*π*√(1-R^2)))*e^((-1/(2*(1-R^2)))*(X^2-2*R*X*Y+Y^2))"▶FZ3;`  
`"√((1-X^2)+(1-Y^2))"▶FZ4;`  
`"−1*√((1-X^2)+(1-Y^2))"▶FZ5;`  
`"√(1-X^2-Y^2)"▶FZ6;`  
`"−1*√(1-X^2-Y^2)"▶FZ7;`  
`"√((X-X^2)+(Y-Y^2))"▶FZ8;`  
`"−1*√((X-X^2)+(Y-Y^2))"▶FZ9;`  
`"SIN(X)*SIN(Y)*1.5"▶FZ0;`  
`"Graph 3D: Equations 1.0"`  
`END;`  
`//`  

##### F02Z.pas  
`//F02Z()/D.G.SCHRAUSSER/2025`  
`//Graph 3D: Equations 2.0`  
`//Complex plane f(z)=z,`  
`//with z=|x+i|`  
`//where f(x,y=i)=√x²+y²`  
`EXPORT F02Z()`  
`BEGIN`  
`"√(X^2+Y^2)"▶FZ1;`  
`"(1/π)*e^(-(ABS(√(X^2+Y^2))^2))"▶FZ2;`  
`"X^((√(X^2+Y^2))-1)*e^(-X)"▶FZ3;`  
`""▶FZ4;`  
`""▶FZ5;`  
`""▶FZ6;`  
`""▶FZ7;`  
`""▶FZ8;`  
`""▶FZ9;`  
`""▶FZ0;`  
`"Graph 3D: Equations 2.0"`  
`END;`  
`//`  

##### F03Z.pas  
`//F03Z()/D.G.SCHRAUSSER/2025`  
`//Graph 3D: Equations 3.0`  
`//FZ1:Student's-t surface, f(t,df),x[-4,4],y[1,10],z[0,0.5]`  
`//FZ2:chi² surface, f(chi²,df), x[0,5],y[1,10],z[0,0.5]`  
`//FZ3-6:F space, f(F,df2);df1={1,5,9,13},x[0,5],y[0,20],z[0,5]`  
`EXPORT F03Z()`  
`BEGIN`  
`"(Gamma(((Y+1)/2))/Gamma((Y/2)))*(Y*π)^(-1/2)*(1+(X^2/Y))^(-(Y+1)/2)"▶FZ1;`  
`"(1/(2^(Y/2)*Gamma((Y/2))))*X^((Y/2)-1)*e^(-X/2)"▶FZ2;`  
`"(Gamma(((1+Y)/2))/(Gamma((1/2))*Gamma((1/2))))*(1/Y)^(1/2)*X^((1/2)-1)*(1+(1/Y)*X)^(-(1+Y)/2)"▶FZ3;`  
`"(Gamma(((5+Y)/2))/(Gamma((5/2))*Gamma((5/2))))*(5/Y)^(5/2)*X^((5/2)-1)*(1+(5/Y)*X)^(-(5+Y)/2)"▶FZ4;`  
`"(Gamma(((9+Y)/2))/(Gamma((9/2))*Gamma((9/2))))*(9/Y)^(9/2)*X^((9/2)-1)*(1+(9/Y)*X)^(-(9+Y)/2)"▶FZ5;`  
`"(Gamma(((13+Y)/2))/(Gamma((13/2))*Gamma((13/2))))*(13/Y)^(13/2)*X^((13/2)-1)*(1+(13/Y)*X)^(-(13+Y)/2)"▶FZ6;`  
`""▶FZ7;`  
`""▶FZ8;`  
`""▶FZ9;`  
`""▶FZ0;`  
`"Graph 3D: Equations 3.0"`  
`END;`  
`//`  

<br>

#### Solve

##### E01.pas  
`//E01()/D.G.SCHRAUSSER/2025`  
`//Solve: Equations 1.0`  
`//E1: Additive probability (P=p,X=pb,N=n; special addition theorem)`  
`//E2: Negative binomial probability (P=p,N=pnb,R=n,K=1,2..,I=0.0)`  
`//E3: Binomial probability (b,c)`  
`//E4: Standard normal distribution z(0,1)`  
`//E5: Effect size epsilon`  
`//E6: Linear regression y'`  
`//E7: Standard error of prediction y'+-C with zcrit`  
`//E8: p of correlation r with n (2-tailed sig p2=2*(1-p);p>0.5)`  
`EXPORT E01()`  
`BEGIN`  
`"X=1-(1-P)^N"▶E1;`  
`"P=Σ(((A+B)!/(I!*(A+B-I)!))*2^(-I)*2^(-(A+B-I)),I,0,A)"▶E3;`  
`"N=Σ(((K+I-1)!/(I!*(K-1)!))*P^K*(1-P)^I,I,0,R-K)"▶E2;`  
`"P=NORMALD_CDF(0,1,Z)"▶E4;`  
`"E=(A-X)/S"▶E5;`  
`"Y=A*X+B"▶E6;`  
`"C=(Z*√(1-R^2))*S"▶E7;`  
`"P=STUDENT_CDF(N-2,(R*√(N-2))/√(1-R^2))"▶E8;`  
`""▶E9;`  
`""▶E0;`  
`"Solve: Equations 1.0"`  
`END;`  
`//`  

##### E02.pas  
```
//E02()/D.G.SCHRAUSSER/2022
//Solve: Equations 2.0
//E1: Aperture value A for exposure value E and shutter speed T
//E2: Exposure value E for illuminance lux L and  ISO I
//E3: Magnification M at focal length F
//E4: Angle of view W at focal length F
EXPORT E02()
BEGIN
"A=1/√(2^(-E)*T)"▶E1;
"E=LN((L*I/250))*(LN(2))^(-1)"▶E2;
"M=F/50"▶E3;
"W=-0.95908335982/(1-1.00293098572*e^(3.51450126836ᴇ−4*F))"▶E4;
""▶E5;
""▶E6;
""▶E7;
""▶E8;
""▶E9;
""▶E0;
"Solve: Equations 2.0"
END;
//
```

##### E03.pas  
```
//E03()/D.G.SCHRAUSSER/2025
//Solve: Equations 3.0
//E1: Resolution R from R0, f0, f1
//E2: Exposure Value E from Tv, Av
//E3: Aperture B from Av0, ISO0, ISO1
EXPORT E03()
BEGIN
"(A*B^2/F^2)=R"▶E1;
"(LN(2))^(-1)*LN(T*A^2)=E"▶E2;
"A*e^(0.5*LN(S^(-1)*I))=B"▶E3;
""▶E4;
""▶E5;
""▶E6;
""▶E7;
""▶E8;
""▶E9;
""▶E0;
"Solve: Equations 3.0"
END;
//
```
##### E04.pas  
```
//E04()/D.G.SCHRAUSSER/2025
//Solve: Equations 4.0
//E1: Astronomical unit A from meters M
//E2: Parsec P from astronomical unit A
//E3: Parsec P from parallax X in milliarcseconds mas
//E4: Light-year L from parsec P
//E5: Speed of light C from m/c M
//E6: Luminosity distance P from distance modulus M
//E7: Radius R at a given distance D with angular diameter V°
//E8: Illuminance in lux E from apparent magnitude M
EXPORT E04()
BEGIN
"A=M/149597870700"▶E1;
"P=(648000/π)*A"▶E2;
"P=1/(X/1000)"▶E3;
"L=P*3.26156"▶E4;
"C=299792458*M"▶E5;
"P=10^((M/5)+1)"▶E6;
"R=D*TAN(((π/180)*V/2))"▶E7;
"E=10^((-14.18-M)/2.5)"▶E8;
""▶E9;
""▶E0;
"Solve: Equations 4.0"
END;
//
```

<br>

### Data

#### Functions

`//C2V(k[2..5])//D.G.SCHRAUSSER/2025`  
`//e.g.C2V(3)`  
`//from L1()..L5() to L6()(k)`  
`#cas`  
`C2V(K):=`  
`BEGIN`  
`size(L1)▶N`  
`{}▶L0`  
`IF K<6 THEN`  
`FOR I FROM 1 TO N DO`  
`L1(I)▶L0(1)`  
`L2(I)▶L0(2)`  
`IF K>2 THEN L3(I)▶L0(3) END;`  
`IF K>3 THEN L4(I)▶L0(4) END;`  
`IF K>4 THEN L5(I)▶L0(5) END;`  
`//`  
`L0▶L6(I)`  
`END;`  
`END;`  
`L6▶M1`  
`L6`  
`END;`  
`#end`  
`//`  

//RNDNR(cases n)/D.G.SCHRAUSSER/2025`  
//e.g.RNDNR(100)`  
#cas`  
RNDNR(N):=`  
BEGIN`  
MAKELIST(RANDOM(),L,0,N-1)▶L7`  
MAKELIST(RANDNORM(0,1),L,0,N-1)▶L8`  
SORT(L7)▶L7`  
SORT(L8)▶L8`  
L8`  
END;`  
#end`  
//`  

//V2C()//D.G.SCHRAUSSER/2025`  
//from L1()(2) to L1() L2()`  
#cas`  
V2C():=`  
BEGIN`  
L1▶M1`  
TRN(M1)▶L3`  
L3(1)▶L1`  
L3(2)▶L2`  
{}▶L3`  
L1,L2`  
END;`  
#end`  
//`  


#### Lists

##### R  
`{2.,9.,6.,6.,3.}▶L1`  
`{5.,9.,6.,3.,5.}▶L2`  
`{6.,5.,2.,8.,3.}▶L3`  

`{{3.,1.},{2.,1.},{1.,1.},{4.,4.},{6.,4.},{5.,4.}}▶L1`  

`{{5.,8.,5.,8.,5.},{9.,8.,5.,0.,0.},{2.,3.,5.,8.,9.},{1.,5.,8.,9.,6.},{5.,8.,7.,5.,5.},{6.,2.,3.,1.,6.},{9.,5.,8.,2.,5.},{9.,6.,9.,5.,8.},{4.,9.,6.,5.,8.},{3.,6.,5.,8.,9.},{6.,5.,5.,6.,5.},{2.,5.,8.,9.,6.},{5.,5.,5.,8.,5.},{6.,9.,5.,8.,8.},{4.,9.,5.,6.,5.}}▶L1`  

##### rbisR  
`{1.,2.,3.,5.,8.,9.,12.,13.,14.,18.,19.}▶L1`  
`{4.,6.,7.,10.,11.,15.,16.,17.,20.}▶L2`  

##### Rho  
`{{1.,5.},{2.,4.},{3.,7.},{4.,2.},{5.,1.},{6.,3.},{7.,10.},{8.,9.},{9.,8.},{10.,6.}}▶L1`  

##### PKR,rpbis  
`{8.,9.,6.,5.,4.,7.,8.,5.,6.,9.}▶L1`  
`{8.,9.,6.,5.,8.,9.,6.,5.,3.,5.}▶L2`  
`{4.,8.,5.,9.,9.,5.,8.,2.,6.,2.}▶L3`  

##### rpbis vs r [correlation(L1,L2)]  
`{8.,9.,6.,5.,4.,7.,8.,5.,6.,9.,8.,9.,6.,5.,8.,9.,6.,5.,3.,5.}▶L1`  
`{2.,2.,2.,2.,2.,2.,2.,2.,2.,2.,1.,1.,1.,1.,1.,1.,1.,1.,1.,1.}▶L2`  

##### Tau-a  
`{1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.}▶L1`   
`{1.,2.,3.,5.,4.,7.,6.,8.,10.,9.,11.,12.}▶L2`  

`{1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.}▶L1`  
`{1.,2.,4.,3.,6.,5.,8.,7.,10.,9.,12.,11.}▶L2`  

##### D [0,1]  
`{0.,0.,0.,0.,0.,0.}▶L1`  
`{0.,0.,0.,0.,0.,0.}▶L2`  

`{1.,1.,1.,1.,1.,1.}▶L1`  
`{1.,1.,1.,1.,1.,1.}▶L2`  

`{0.,0.,0.,1.,1.,1.}▶L1`  
`{1.,1.,1.,0.,0.,0.}▶L2`  

`{1.,0.,0.,1.,0.,1.}▶L1`  
`{0.,1.,0.,1.,0.,0.}▶L2`  

`{1.,0.,0.,1.,0.,1.,1.,1.,1.,0.,0.,1.,0.,0.,0.,1.,1.,0.,1.,0.,0.,0.,0.,0.,1.}▶L1`  
`{0.,1.,0.,1.,0.,0.,1.,1.,1.,1.,0.,0.,1.,1.,0.,1.,1.,1.,0.,1.,1.,1.,0.,0.,1.}▶L2`  

##### PV_  
`{{1.,4.},{2.,6.},{2.,7.}}▶L1`  
(see Scambor, [1997](https://doi.org/10.13140/RG.2.2.28632.06405); Scambor & Schrausser, [2022](https://www.academia.edu/94993376), p. 7, respectively)  

`{{8.,9.},{2.,3.},{9.,7.},{2.,7.},{9.,8.}}▶L1`  

`{{8.6,4.5},{9.2,4.1},{6.7,1.2},{9.6,4.5},{6.2,7.6},{6.1,8.5},{9.3,4.2},{7.3,8.2}}▶L1`  

##### PU_  
`{18.,30.,54.}▶L1`  
`{6.,12.}▶L2`  
(see Schrausser, [1996](https://doi.org/10.13140/RG.2.2.24500.32640/1), [2022b](https://www.academia.edu/82224369), p. 2).  

`{18.04,10.07,22.27,1.96,18.88,12.81,3.08,21.49,1.96,24.93}▶L1`  
`{24.96,22.39}▶L2`  
(see Schrausser, [1997](https://doi.org/10.13140/RG.2.2.14805.91369), [1998a](https://doi.org/10.13140/RG.2.2.19532.69768))  

<br>
<br>

## References
`man_ref.md`
