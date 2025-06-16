# Mathematical and statistical applications for HP Prime

Dietmar G. Schrausser, 2025

<br>

## Abstract

Applications for HP Prime *CAS*, *User* functions and *Applications*, an overview of the methods and their origins is given.

<br>

## 1. Introduction

Mathematical and statistical applications `HP_Prime_MATH` for (1) the Computer Algebra System *CAS*, by means of the *Pascal* based *HP Prime Programming Language* (HP PPL), (2) the HP Prime *User* functions and (3) HP Prime *Applications* (s. HP Inc., [2017](https://www.hpcalc.org/details/7445)), 
including methods for (1) *correlation*, (2) *exposure*, (3) *integration*, (4) *distribution*, (5) *probability*, (6) *combinatorics*, (7) *resampling* and (8) *complex plane* calculations (Schrausser, [2025](https://doi.org/10.5281/zenodo.14721085)). 

The description of the *underlying* algorithms and functions is deliberately omitted, as these are presented and discussed in detail in `func.md`. Instead, an *overview* of the implemented methods is given and *additionally* their *historical development* is outlined (c.f. `paper_tab.md`).

<br>

## 2. Functions

### 2.1. Correlation

To measure the degree of a linear *relation* between variables,
Karl Pearson ([1904](https://openlibrary.org/books/OL24168960M)) was developing statistical procedures for biometry including the *correlation* and *regression* coefficients based on the works of Bravais ([1844](https://books.google.com/books?id=7g\_hAQAACAAJ)) and
 Galton ([1877](https://doi.org/10.1038/015492a0)) who introduced the symbol $r$, on the then designation of the term *reversion*.

The methodological apparatus of *factor analysis* as a further and broader concept, based on *multiple regression* and *matrix* calculation was *first discussed* by
Charles Edward Spearman ([1904](http://www.jstor.org/stable/1412159)), later the *initial* developed took place by Louis Leon Thurstone ([1931](https://doi.org/10.1037/h0069792), [1934](https://doi.org/10.1037/h0075959), [1935](https://archive.org/details/vectorsofmindmul010122mbp/page/n7/mode/1up); s. also Cattell, [1966](https://doi.org/10.1207/s15327906mbr0102\_10)). 

The following functions for *correlation*- and *regression*-techniques are implemented (c.f. `correlation.md`):

(1) Pearson *product-moment* correlation coefficient $r_{xy}$, see Pearson ([1904](https://openlibrary.org/books/OL24168960M), [1905](https://openlibrary.org/books/OL6555066M)).

(2) Spearman's $\rho$, being equivalent to the *product moment* correlation when *rank* values are present (s. Spearman, [1904](http://www.jstor.org/stable/1412159)).

(3) Kendall's tau $\tau_a$, i.e. without adjustment for *ties* (s. Kendall, [1938](http://www.jstor.org/stable/2332226)).

(4) Somers' $D$, for *binary* data [0,1] (s. Somers, [1962](http://www.jstor.org/stable/2090408)).

(5) *Point biserial* correlation coefficient $r_{pb}$ or also *point biseral*.

(6) *Biserial* correlation coefficient $r_{bis}$, Pearson ([1909](http://www.jstor.org/stable/2345365)), s. Tate ([1955](http://www.jstor.org/stable/2333437)),
also called *biseral*. 

(7) *Rank biserial* correlation coefficient $r_{bisR}$ or *rank biseral*, corresponding to the *effect size* for the *Mann–Whitney* $U$*-test* (Mann and Whitney, [1947](https://doi.org/10.1214/aoms/1177730491)).

(8) *Phi* coefficient $\Phi$, Yule ([1912](http://www.jstor.org/stable/2340126)).

(9) *Tetrachoric* correlation $r_{tet}$, Pearson ([1900a](https://royalsocietypublishing.org/doi/abs/10.1098/rsta.1900.0022)), Everitt ([1910](https://doi.org/10.1093/biomet/7.4.437), [1912](http://www.jstor.org/stable/2331587)), s. e.g. Brown ([1977](http://www.jstor.org/stable/2346985)), Digby ([1983](http://www.jstor.org/stable/2531104)), also Bonett and Price ([2005](http://www.jstor.org/stable/3701350)) or Long et al. ([2009](https://doi.org/10.1177/0013164408324463)), *proposed* approximate algorithm.

(10) *Partial* correlation $r_{xy\cdot z}$.

(11) Fisher $Z$-transformation, Fisher ([1915](https://doi.org/10.2307/2331838)).

(12) Fisher $Z$ *difference*, also Cohen's $q$ (Cohen, [1988](https://www.scirp.org/(S(lz5mqp453edsnp55rrgjct55))/reference/ReferencesPapers.aspx?ReferenceID=2041144), p. 110).

(13) *Averaged* Fisher $Z$.

(14) Coefficient of *multiple* correlation $R_{c,12}$, for $\hat R_{c,12}^2$ see Olkin and Pratt ([1958](https://doi.org/10.1214/aoms/1177706717)), with the *effect size* for *multiple* regression $f^2$ (Cohen, [1988](https://www.scirp.org/(S(lz5mqp453edsnp55rrgjct55))/reference/ReferencesPapers.aspx?ReferenceID=2041144), p. 410).

### 2.2. Exposure

To determine the appropriate *time-aperture-speed* combination for given *light values* on a logarithmic scale (c.f. Allbright, [1991](https://doi.org/10.1080/00223638.1991.11737126); Marsden and Weinstein, [1985](https://doi.org/10.1007/978-1-4612-5024-1_9); Howie, [2001](https://doi.org/10.1007/978-1-4471-0341-7_6) and Sobot, [2021](https://doi.org/10.1007/978-3-030-79545-0_4)), following functions are
included for the calculation of (1) *exposure values* $Ev$, where $Ev=\frac{\log(Tv\cdot Av^2)}{\log(2)}$, (2) *aperture* $Av$ for time $Tv$ or speed $S$ with given $Ev$, (3) *aperture* $Av$ *shift* from time $Tv$ or speed $S$ in *steps* $k$ and (4) *speed* $S$ in *logarithmic* $ISO°$ or *arithmetic* $ISO$ values.

### 2.3. Functions of integration for $\pi$ and $\Gamma$

Gottfried Wilhelm Leibniz ([1684](https://gdz.sub.uni-goettingen.de/id/PPN788262599), [1686](https://gdz.sub.uni-goettingen.de/id/PPN788262947), [1693](https://archive.org/details/s1id13206590)) along with Sir Isaac Newton ([1687](https://books.google.com/books?id=XJwx0lnKvOgC), [1713](https://digital.onb.ac.com/OnbViewer/viewer.faces?doc=ABO_%2BZ180810706&order=7&view=SINGLE), [1726](https://gdz.sub.uni-goettingen.de/id/PPN512261393)) are considered the discoverers of *differential* and *integral calculus*. According to current consensus, both developed the methods independently of each other, see the so-called *Leibniz-Newton calculus controversy* (c.f. Cajori, [1919](http://www.jstor.org/stable/2974042); Cassirer, [1943](http://www.jstor.org/stable/2180670); Rosenthal, [1951](http://www.jstor.org/stable/2308368); Schrader, [1962](http://www.jstor.org/stable/27956626); Kossovsky, [2020](https://doi.org/10.1007/978-3-030-51744-1_33)).

Newton *began* working on a *geometric* form of *calculus* (the method of *fluxions and fluents*) in 1666, published in [1687](https://books.google.com/books?id=XJwx0lnKvOgC) (c.f. Roero,  [2005](https://doi.org/https://doi.org/10.1016/B978-044450871-3/50085-1)), yet, it was Leibniz who *introduced* the symbols $\int$ and $\partial$.

Here, the functions are primarily intended to display and calculate $\pi$ and $\Gamma$ within the coordinate system:

(1) *Circular* function for $\pi$, where Weierstraß ([1894](https://quod.lib.umich.edu/u/umhistmath/AAN8481.0001.001), p. 53) describes $\frac{\pi}{2}=\int_0^{\infty}\frac{1}{1-x^2}dx$, which *may* be less heuristic (s. `func.md`).

(2) *Spherical* functions for $\pi$, for source codes to *volume integrals* of the *sphere* see e.g. Schrausser ([2024d](https://doi.org/10.5281/zenodo.14280500)).

(3) *Gamma* function $\Gamma$, meant to extend the *factorial* to *non-integer* arguments, was first considered by Daniel Bernoulli and Christian Goldbach 
(Bernoulli, [1729](https://commons.m.wikimedia.org/wiki/File:DanielBernoulliLetterToGoldbach-1729-10-06.jpg)), later Leonhard Euler ([1738](https://scholarlycommons.pacific.edu/euler-works/19/)) and Johann Carl Friedrich Gauss (s. Remmert, [1998](https://doi.org/10.1007/978-1-4757-2956-6_2)), first *tables* were given by Jahnke and Emde ([1909](https://books.google.com/books?id=BVRzvgAACAAJ), [1933](https://books.google.com/books?id=SB5tAAAAMAAJ), [1938](https://books.google.com/books?id=5vlrAAAAIAAJ), [1945](https://archive.org/details/tablesoffunction0000jahn)), Knoll ([1939](https://doi.org/10.1007/BF01695545)) and Jahnke et al. ([1966](https://dokumen.pub/jahnke-emde-lsch-tafeln-hherer-funktionen-tables-of-higher-functions-7nbsped.html)).

### 2.4. Distribution functions

The discovery of the *normal distribution* is attributed to Abraham de Moivre ([1738](https://books.google.com/books?id=PII\_AAAAcAAJ)), later Gauss ([1809](https://archive.org/details/theoriamotuscor00gausgoog/page/n1/mode/1up)) described the *arithmetic mean* as an estimator in context with the *normal law of errors*. Beneath the *normal distribution*, Gauss ([1823](https://doi.org/10.3931/e-rara-2857)) also introduces several important statistical concepts, such as the methods of *least squares* and of *maximum likelihood*.   

The $t$*-distribution* first derived as a posterior distribution by Lüroth ([1876](https://doi.org/10.1002/asna.18760871402)), appearing later as *Pearson Type IV* (Pearson, [1895](https://doi.org/10.1098/rsta.1895.0010)),  however gets its name as *Student's* $t$*-distribution* from William Sealy Gosset ([1908](https://doi.org/10.2307/2331554)), who published it using the pseudonym *Student*, though it was actually through the *extensive* works of Sir Ronald Aylmer Fisher that the distribution became well known.  

The $\chi^2$*-distribution* was first described by Friedrich Robert Helmert ([1876](https://gdz.sub.uni-goettingen.de/id/PPN599415665_0021)) and independently *rediscovered* by Pearson ([1900b](https://doi.org/10.1080/14786440009463897)) in context with the *goodness of fit* paradigm, where he developed the $\chi^2$-test with computed *table* of values, published by Elderton ([1902](https://doi.org/10.1093/biomet/1.2.155)), s. further Pearson ([1914](https://doi.org/10.1093/biomet/10.1.85)) or Plackett ([1983](https://doi.org/10.2307/1402731)).

Fisher ([1918](https://hdl.handle.net/2440/15097), [1921](https://hdl.handle.net/2440/15169), [1925](https://www.scirp.org/(S(i43dyn45teexjx455qlt3d2q))/reference/ReferencesPapers.aspx?ReferenceID=2056938)) introduced the term *variance* and proposed its formal analysis, as well as the $F$*-distribution* (Fisher, [1924](https://repository.rothamsted.ac.uk/item/8w2q9/on-a-distribution-yielding-the-error-functions-of-several-well-known-statistics); s. also Snedecor, [1934](https://doi.org/10.1037/13308-000) and Scheffé, [1959](https://psycnet.apa.org/record/1961-00074-000)). The methods became widely known from *Methods for Research Workers* (Fisher, [1925](https://www.scirp.org/(S(i43dyn45teexjx455qlt3d2q))/reference/ReferencesPapers.aspx?ReferenceID=2056938), [1954](https://www.worldcat.org/de/title/statistical-methods-for-research-workers/oclc/312138), [1973](https://www.amazon.com/Statistical-methods-research-workers-Fourteenth/dp/0050021702), [2017](https://www.amazon.com/Statistical-Methods-Research-Workers-Fisher/dp/9351286584)). 

Following functions for the most *relevant* methods are available:

(1) *Standardizing*, i.e. $z$-values and $\zeta$-values.

(2) *Quantity proportion* of $a$ at $N$ for $n_{^\ge p}$.

(3) *Weighted arithmetic* mean $\ddot{\overline x}$.

(4) *Geometric* mean $\dot x$, for the *weighted geometric* mean $\ddot{\dot x}$ s. Siegel ([1942](https://doi.org/10.1080/01621459.1942.10500636)).

(5) *Harmonic* mean $\overline{\overline x}$.

(6) Coefficient of *variation* $\omega$.

(7) *Mean dispersion* $\overline d$, Schrausser ([2022a](https://www.academia.edu/81395688), p. 33).

(8) *Standard normal distribution* $f(x=z)$, de Moivre ([1738](https://books.google.com/books?id=PII\_AAAAcAAJ)), Gauss ([1809](https://archive.org/details/theoriamotuscor00gausgoog/page/n1/mode/1up), [1823](https://doi.org/10.3931/e-rara-2857)).

(9) *Bivariate normal distribution* $f(z_1,z_2)$.

(10) *Student's* $t$*-distribution* $f(x=t)$, Lüroth ([1876](https://doi.org/10.1002/asna.18760871402)), Pearson ([1895](https://doi.org/10.1098/rsta.1895.0010)), Gosset ([1908](https://doi.org/10.2307/2331554)).

(11) $\chi^2$*-distribution* $f(x=\chi^2)$, Helmert ([1876](https://gdz.sub.uni-goettingen.de/id/PPN599415665_0021)), Pearson ([1900b](https://doi.org/10.1080/14786440009463897), [1914](https://doi.org/10.1093/biomet/10.1.85)), Elderton ([1902](https://doi.org/10.1093/biomet/1.2.155)), Plackett ([1983](https://doi.org/10.2307/1402731)).

(12) $F$*-distribution* $f(x=F)$, Fisher ([1924](https://repository.rothamsted.ac.uk/item/8w2q9/on-a-distribution-yielding-the-error-functions-of-several-well-known-statistics)), Snedecor ([1934](https://doi.org/10.1037/13308-000)), Scheffé ([1959](https://psycnet.apa.org/record/1961-00074-000)).

(13) *Third* standardized moment, skewness $\alpha_3$.

(14) *Fourth* standardized moment, excess kurtosis $\alpha_4$.

(15) *Estimated standard error* of *mean* $\hat\sigma_{\overline x}$, *confidence interval* $CI_p$, Neyman ([1937](https://doi.org/10.1098/rsta.1937.0005)) introduced the *confidence interval* into statistical hypothesis testing vs. Fisher's *null hypothesis* testing, the *Neyman–Pearson lemma* (Neyman and Pearson, [1933](https://doi.org/10.1098/rsta.1933.0009); Lehmann, [1993](https://doi.org/10.1080/01621459.1993.10476404)).

(16) *Standard error* of *prediction* $\sigma_{\hat yx}$ , *confidence interval* $CI_p$.

(17) *Effect size* $\epsilon$, Cohen's $d$ (Cohen, [1977](https://doi.org/10.1016/C2013-0-10517-X), [1988](https://www.scirp.org/(S(lz5mqp453edsnp55rrgjct55))/reference/ReferencesPapers.aspx?ReferenceID=2041144), p. 20, p. 49, [1992](https://doi.org/10.1037/0033-2909.112.1.15)), Borenstein et al.  ([1997](https://www.semanticscholar.org/paper/Power-and-precision-%3A-a-computer-program-for-power-Borenstein-Rothstein/f379f13a460b01488c35aea408e355436dbae839)), Borenstein et al. ([2001](https://books.google.com/books?id=tYg02XZBeNAC&printsec=frontcover&hl=de#v=onepage&q&f=false)).

(18) *Optimal effect size* $\epsilon_p$.

(19) *Optimal alpha level*.

(20) *Variance difference* $t$-test for *paired* samples $(x_1|x_2)$.

(21) *Paired* 2-sample $t$-test.

(22) *Unpaired* 2-sample $t$-test.

(23) *One-sample* $t$-test.

(24) $\chi^2$-test for *independence*.

(25) *2 × 2* $\chi^2$-test for *independence*, for Yates's correction for *continuity* see Yates ([1934](http://www.jstor.org/stable/2983604)).

(26) McNemar's $\chi^2$-test for *paired 2 × 2 contingency* tables with *dichotomous* trait, McNemar ([1947](https://doi.org/10.1007/BF02295996)).

### 2.5. Probability

Since until the Renaissance a *probable* opinion was merely *confirmed* by an authority and hence there was no further concept of *inductive* evidence (see Hacking, [1975](https://philpapers.org/rec/HACTEO-8); Hald, [2003](https://www.wiley.com/en-us/A+History+of+Probability+and+Statistics+and+Their+Applications+before+1750-p-9780471725176), p. 31), an *objective* representation of *probability* as such was *first discussed* by Antoine Arnauld and Pierre Nicole ([1662](https://gallica.bnf.fr/ark:/12148/bpt6k574432.image), [1682](https://books.google.com/books?id=XQVaAAAAcAAJ), [1693](https://archive.org/details/logicorartofthin00arnaiala); c.f. also Arnauld et al., [1970](https://philpapers.org/rec/ARNLLO-8); van Evra, [1997](https://philpapers.org/rec/VANAAA-13); Dessì and Albury, [1997](https://doi.org/10.1080/01445349708837281) or Finocchiaro, [1997](https://doi.org/10.1023/A:1007756105432)).

The *binomial distribution* is primarily attributable to de Moivre ([1711](https://doi.org/10.1098/rstl.1710.0018), [1718](https://books.google.com/books?id=3EPac6QpbuMC), [1738](https://books.google.com/books?id=PII\_AAAAcAAJ)) and Jacob Bernoulli ([1713](https://www.e-rara.ch/zut/doi/10.3931/e-rara-9001)), see also Schneider ([2005a](https://doi.org/10.1016/B978-044450871-3/50087-5), [b](https://doi.org/10.1016/B978-044450871-3/50087-5)). Although not included as function, due to its *considerability* in this context, the *configuration frequency analysis, CFA* should be mentioned particularly (c.f. Krauth, [1973](https://d-nb.info/740097938); Krauth and Lienert, [1993](https://books.google.com/books?id=4oeIAAAACAAJ)).

An account of the *systematics and logic* of *dependent probabilities* within the framework of *Bayes' theorem* (Bayes and Price, [1763](http://www.jstor.org/stable/105741); c.f. Stigler, [2018](https://www.jstor.org/stable/26770983)) can be found in Schrausser ([2024c](https://doi.org/10.5281/zenodo.14183565)).

The arguably *most* important methods regarding the calculation of *probability parameters* are implemented as follows:

(1) *Arcsine transformation*, Cohen's $h$ (Cohen, [1988](https://www.scirp.org/(S(lz5mqp453edsnp55rrgjct55))/reference/ReferencesPapers.aspx?ReferenceID=2041144), p. 181).

(2) *Additive probability* for *independent* events $^u p(\cup_n A)$, which corresponding to the *geometric distribution* $f(X\le r|p)$.

(3) *Geometric distribution* $f(X\le r|p)$, corresponding to the *additive* probability $^u p(\cup_n A)$.

(4) *Negative binomial distribution* $f(X\le r|r,p)$, with $k=1$ it corresponds to the *geometric distribution* $f(X\le r|p)$ and the *additive* probability $^u p(\cup_n A)$.

(5) *Exact binomial* test.

(6) *Exact hypergeometric 2 × 2* test, the so-called *Fisher Exact* test (Fisher, [1922](https://doi.org/10.2307/2340521); Agresti, [1992](https://doi.org/10.1214/ss/1177011454)).

### 2.6. Combinatorics

After Gersonides' *pioneering* work from 1321 dealing with *arithmetical* operations and *combinatorics* (s. Abraham Bar Hiyya Savasorda, [1450](https://www.loc.gov/item/2021667539/); Rabinovitch, [1970](http://www.jstor.org/stable/41133303)), the methods, being a fundamental part for *probability calculations*, are *mainly* based on Blaise Pascal ([1665](https://gallica.bnf.fr/ark:/12148/btv1b86262012.image#)), Bernoulli ([1713](https://www.e-rara.ch/zut/doi/10.3931/e-rara-9001)) and Euler ([1753](https://scholarlycommons.pacific.edu/euler-works/201/)), c.f. Ettingshausen ([1826](https://archive.org/details/diecombinatoris00ettigoog/page/n70/mode/1up?view=theater)). 

See further Sylvester ([1904](https://archive.org/details/collectedmathem01sylvrich/page/n7/mode/1up), [1908](https://archive.org/details/SylvesterCollected2/page/n3/mode/1up), [1909](https://archive.org/details/TheCollectedMathematicalPapersOfJamesJosephSylvesterVolumeIii/page/n3/mode/1up), [1912](https://archive.org/details/collectedmathema04sylvuoft/page/n8/mode/1up)) and MacMahon ([1915](https://openlibrary.org/works/OL1109964W/Combinatory_analysis), [1916](https://books.google.com/books/about/Combinatory_Analysis.html?id=A_PuAAAAMAAJ&redir_esc=y)), giving fundamental contributions to *matrix-theory* and *combinatorics*. 

The following functions to *generate permutation* and *variation* matrices are available, *primarily* to support the *resampling* procedures described below:

(1) *Permutation* matrix $\mathbf{P_n}$, with $n$ elements to $k=1$ class.

(2) *Variation* matrix $\mathbf{^w V_2^m}$ for the *dependent* 2 sample design, with $n=2$ elements to class $m$.

(3) *Variation* matrix $\mathbf{ ^w V_n^m}$, with $n$ elements to class $m$.

(4) *Permutation* matrix $\mathbf{^w P_n^{(k_m,k_{n-m})}}$, with $n$ elements to class $m$.

### 2.7. Resampling

*Permutation* or *randomization tests* were first mentioned by Fisher ([1935](https://psycnet.apa.org/record/1939-04964-000)), based on experiments in agriculture (Fisher, [1926](https://doi.org/10.23637/rothamsted.8v61q); Neyman, [1923](https://link.springer.com/chapter/10.1007/978-94-015-8816-4_10)). In this context see Pitman ([1937a](http://www.jstor.org/stable/2984124), [b](http://www.jstor.org/stable/2983647), [1938](http://www.jstor.org/stable/2332008)), Fisher ([1966](https://scirp.org/reference/referencespapers.aspx?referenceid=895747), [1971](https://home.iitk.ac.in/~shalab/anova/DOE-RAF.pdf), res.), especially Eugene Sinclair Edgington ([1964](https://doi.org/10.1080/00223980.1964.9916711), [1980](https://doi.org/10.2307/1164966), [1987](https://doi.org/10.1037/0022-0167.34.4.437), [2011](https://doi.org/10.1007/978-3-642-04898-2_56)) or Edgington and Onghena ([2007](https://doi.org/10.1201/9781420011814)).

The *bootstrap* method was introduced by Bradley Efron ([1979](https://doi.org/10.1214/aos/1176344552), [1981](https://doi.org/10.1093/biomet/68.3.589), [1982](https://doi.org/10.1137/1.9781611970319)) as a further development (Quenouille, [1949](https://doi.org/10.1111/j.2517-6161.1949.tb00023.x); Metropolis and Ulam, [1949](https://doi.org/10.1080/01621459.1949.10483310)), for *software* solutions see e.g. Solomon ([1982](https://doi.org/10.5555/1035853.1035900)), Dallal ([1986](http://www.jstor.org/stable/2684555), [1988](https://doi.org/https://doi.org/10.1016/0010-4809(88)90037-7)), Peladeau ([1993](https://doi.org/10.3758/BF03204533)), Wooff and Peladeau ([1994](https://doi.org/10.2307/2986032)), Mehta et al. ([2014](https://doi.org/10.1002/9781118445112.stat04892)),  also Schrausser ([2024d](https://doi.org/10.5281/zenodo.14280500)).

Following functions were *developed*:

(1) *Permutation test P* for 2 *paired* samples $(x_1|x_2)$. Random sampling model, *systematic* permutation, $p$-value *not* randomized, *variation* matrix $\mathbf{ ^w V_2^m}$ *required*, s. Scambor ([1997](https://doi.org/10.13140/RG.2.2.28632.06405)), Scambor and Schrausser ([2022](https://www.academia.edu/94993376), p. 7), respectively.

(2) *Randomized permutation test mP* for 2 *paired* samples $(x_1|x_2)$. Random sampling model, $p$-value *not* randomized.

(3) *Permutation test P* for 2 *independent* samples $(x|g)$. Random sampling model, *systematic* permutation, $p$-value *not* randomized, *permutation* matrix $\mathbf{^w P_n^{(k_m,k_{n-m})}}$ *required*, see Schrausser ([1996](https://doi.org/10.13140/RG.2.2.24500.32640/1), [1998b](https://doi.org/10.5281/zenodo.11673333), [2022b](https://www.academia.edu/82224369), p. 2).

(4) *Randomized permutation test mP* for 2 *independent* samples $(x|g)$. Random sampling model, $p$-value *not* randomized.

(5) *Bootstrap* test *Bt* for 2 *independent* samples $(x|g)$, c.f. Quenouille ([1949](https://doi.org/10.1111/j.2517-6161.1949.tb00023.x)), Efron ([1979](https://doi.org/10.1214/aos/1176344552), [1981](https://doi.org/10.1093/biomet/68.3.589), [1982](https://doi.org/10.1137/1.9781611970319)).

### 2.8. Complex plane

It was the Italian mathematician Gerolamo Cardano ([1545a](https://archive.org/details/arsmagnaorruleso0000card), [b](https://web.archive.org/web/20220201093634/http://www.filosofia.unimi.it/cardano/testi/operaomnia/vol_4_s_4.pdf)) who *first* conceived the term *imaginary*, for the further historical development of *imaginary* or *complex numbers* see René Descartes ([1664](https://books.google.com/books?id=VtFcAAAAcAAJ), [2012](https://books.google.com/books?id=MB7F32p0y5MC), res.) and Gauss ([1828](https://doi.org/10.3931/e-rara-61066), [1832](https://doi.org/10.3931/e-rara-61067)), c.f. also Wirtinger ([1927](https://doi.org/10.1007/BF01447872)). 

Here finally realized are (1) the *geometric* representation of *complex numbers* $z$ in the complex plane, the *Argand diagram* (s. Argand, [1813](https://fr.wikisource.org/wiki/Annales_de_math%C3%A9matiques_pures_et_appliqu%C3%A9es/Tome_04/Philosophie_math%C3%A9matique,_article_4), [1874](http://catalogue.bnf.fr/ark:/12148/cb300261909), res.) and (2) the *graph* of the *complex function*, where $z=\Re+\Im$.

At this point, one should recall the *definitional* importance of *geometry* and *trigonometry* in context with the calculation of *complex numbers* itself, where $|z|$ is *calculated* according to Pythagoras (c.f. Ratdolt, [1482](https://catalog.lindahall.org/discovery/delivery/01LINDAHALL_INST:LHL/1286816310005961), propositio 46) by $|z|=r=\sqrt{x^2+y^2}$.

After the fundamental change in mathematics from *geometric* to *algebraic* representation took place in the 16th century (c.f. Heath, [1908a](https://archive.org/details/thirteenbookseu02heibgoog), [b](https://archive.org/details/thirteenbookseu00heibgoog), [c](https://archive.org/details/thirteenbookseu03heibgoog); Bochner, [1978](https://hdl.handle.net/1911/63315); Anglin and Lambek, [1995](https://doi.org/10.1007/978-1-4612-0803-7_25); Malet, [2006](https://doi.org/10.1016/j.hm.2004.11.011) or Alten et al., [2014](https://doi.org/10.1007/978-3-642-38239-0_4)), the origins of *trigonometric series* of *tangents* and *sine* can be seen following early attempts (s. Jyesthadeva, [1530](https://archive.org/details/raswhishNA-124); Whish, [1834](https://doi.org/10.1017/S0950473700001221); Gupta, [1974](https://doi.org/10.1016/0315-0860(74)90067-6) or Divakaran, [2007](http://www.jstor.org/stable/23497280)) during the European *reinvention* in the works of Gregory ([1671](https://archivesearch.lib.cam.ac.uk/repositories/2/archival_objects/566767), [1668a](https://books.google.com/books?id=ZtRYqgyD5YsC), [b](https://archive.org/details/gregory_universalis)), Leibniz ([1682](https://books.google.com/books/about/Acta_eruditorum.html?id=E7MasYIsMKQC), [2012](https://doi.org/10.26015/adwdocs-1924)), Newton ([1669](https://www.newtonproject.ox.ac.uk/view/texts/normalized/NATP00204), [1711](https://doi.org/10.3931/e-rara-8934)) and Brook Taylor ([1715](https://books.google.com/books?id=iXN1xgEACAAJ), [1717](https://books.google.com/books?id=r-Gq9YyZYXYC)) with the definition of the *Taylor series* of *sine* where $\sin⁡x=\sum_{n=0}^\infty\frac{(-1)^n }{(2⋅n+1)!}⋅x^{2⋅n+1}$ (c.f. Gregory and Collins, [1939](https://books.google.com/books?id=\_eruAAAAMAAJ); Boyer, [1968](https://archive.org/details/ahistoryofmathematicscarlbboyer1968_315_t), p. 422 ff.; Feigenbaum, [1985](http://www.jstor.org/stable/41133765)). 

Finally, Euler ([1748a](https://scholarlycommons.pacific.edu/euler-works/101/), [b](https://scholarlycommons.pacific.edu/euler-works/102/)) established the *analytic* treatment of *trigonometric* functions, defining them in relation with *complex exponential* functions by $e^{ix}=\cos⁡x+i \sin⁡x$, where $e=\sum_{n=0}^\infty\frac{1}{n!}$
and thus laid the foundation of *modern* mathematical analysis (c.f. Finkel, [1897](http://www.jstor.org/stable/2968971); Walter, [1982](http://www.jstor.org/stable/2320218); Koyama and Kurokawa, [2005](http://www.jstor.org/stable/4097775); Calinger, [2016](http://www.jstor.org/stable/j.ctv7h0smb) and Schrausser, [2024b](https://doi.org/10.5281/zenodo.11356370)).

<br>

## 3. Conclusion 

In addition to the *source codes* of the functions, *raw* data sets are provided for *correlation-* as well as *resampling*-methods.
*CAS* programs, HP Prime *User* functions and functions for HP Prime *Applications* in comparison to corresponding `Schrausser-MAT` functions (Schrausser, [2022a](https://www.academia.edu/81395688)) are displayed in `func_tab.md`. Furthermore, the application `FunktionWin` for a precise calculation of *probability distributions* can additionally be considered (Schrausser, [2023c](https://doi.org/10.5281/zenodo.7651660)) as well as the author's further software applications for *mathematical* and *statistical* analyses (Schrausser, [2023a](https://doi.org/10.5281/zenodo.7664141), [b](https://doi.org/10.5281/zenodo.7655056), [d](https://doi.org/10.5281/zenodo.7664088)).

On *mathematical statistical* methods in general see e.g. Cox and Hinkley ([1974](https://doi.org/10.1201/b14832)), Bortz and Weber ([2005](https://doi.org/10.1007/b137571)), Lehmann and Romano ([2008](https://books.google.com/books?id=IlJE_9_e8UEC)) or Bortz and Schuster ([2010](https://doi.org/10.1007/978-3-642-12770-0)), Schrausser ([2024a](https://doi.org/10.5281/zenodo.10969144)) provides a comprehensive overview of the most important *distribution functions* and corresponding *algorithms*.

For *calculus* and *theory of functions* see e.g. Meyberg and Vachenauer ([2001a](https://doi.org/10.1007/978-3-642-56654-7), [b](https://doi.org/10.1007/978-3-642-56655-4)) or Remmert and Schumacher ([2002](https://doi.org/10.1007/978-3-642-56281-5)), on *complex numbers* in the *complex plane* see e.g. Burckel ([2021](https://doi.org/10.1007/978-1-0716-1965-0)) and Vince ([2021](https://doi.org/10.1007/978-1-4471-7509-4_4)), introducing works on *resampling* methods are given by e.g. Good ([2006](https://www.amazon.com/Resampling-Methods-Practical-Guide-Analysis/dp/0817643869)) or Beasley and Rodgers ([2009](https://psycnet.apa.org/doi/10.4135/9780857020994.n16)). 

For the history of *statistical inference* in general see e.g. Stigler ([1986](https://www.scirp.org/(S(351jmbntvnsjt1aadkposzje))/reference/ReferencesPapers.aspx?ReferenceID=1973131)) and Hald ([1990](https://onlinelibrary.wiley.com/doi/book/10.1002/0471725161), [1998](https://www.abebooks.com/History-Mathematical-Statistics-1750-1930-Wiley/31042381048/bd), [2003](https://www.wiley.com/en-us/A+History+of+Probability+and+Statistics+and+Their+Applications+before+1750-p-9780471725176), [2007](https://link.springer.com/book/10.1007/978-0-387-46409-1#bibliographic-information)), the *historical foundations* of mathematics are thematized and discussed in e.g. Suter ([1887](https://doi.org/10.3931/e-rara-65095)), Heath ([1921a](https://archive.org/details/cu31924008704219), [b](https://archive.org/details/historyofgreekma029268mbp/page/n5/mode/1up)), Boyer ([1968](https://archive.org/details/ahistoryofmathematicscarlbboyer1968_315_t)), Neugebauer ([1969](https://books.google.com/books?id=JVhTtVA2zr8C)), Ewald ([1996a](https://philpapers.org/rec/BRAFKT), [b](https://philpapers.org/rec/EWAFKT-4)), Katz ([2009](https://www.gettextbooks.com/isbn/9780321387004/)) or Merzbach and Boyer ([2011](https://books.google.com/books/about/A_History_of_Mathematics.html?id=bR9HAAAAQBAJ)), c.f. `paper_tab.md`.

<br>

## References

Abraham Bar Hiyya Savasorda, & et al. (1450). *Ma’aseh Hoshev*. Retrieved from the Library of Congress. [https://www.loc.gov/item/2021667539/](https://www.loc.gov/item/2021667539/)

Agresti, A. (1992). A Survey of Exact Inference for Contingency Tables. *Statistical Science 7* (1): 131–53. [https://doi.org/10.1214/ss/1177011454](https://doi.org/10.1214/ss/1177011454)

Allbright, G. S. (1991). Emulsion Speed Rating Systems. *The Journal of Photographic Science 39* (2): 95–99. [https://doi.org/10.1080/00223638.1991.11737126](https://doi.org/10.1080/00223638.1991.11737126)

Alten, H. -W., Naini, A. D., Eick, B., Folkerts, M., Schlosser, H., Schlote, K. -H., Wesemüller-Kock, H., & Wussing, H. (2014). Algebra Im Europa Des Mittelalters Und Der Renaissance. In *4000 Jahre Algebra: Geschichte – Kulturen – Menschen*, 207–63. Berlin, Heidelberg: Springer. [https://doi.org/10.1007/978-3-642-38239-0_4](https://doi.org/10.1007/978-3-642-38239-0_4)

Anglin, W. S., & Lambek, J. (1995). Mathematics in the Renaissance. In *The Heritage of Thales*, 125–31. New York, NY: Springer. [https://doi.org/10.1007/978-1-4612-0803-7_25](https://doi.org/10.1007/978-1-4612-0803-7_25)

Argand, R. (1813). Essai sur une manière de représenter les quantités imaginaires dans les constructions géométriques. *Annales de Mathématiques Pures Et Appliquées 4*: 133–47. [https://fr.wikisource.org/wiki/Annales_de_math%C3%A9matiques_pures_et_appliqu%C3%A9es/Tome_04/Philosophie_math%C3%A9matique,_article_4](https://fr.wikisource.org/wiki/Annales_de_math%C3%A9matiques_pures_et_appliqu%C3%A9es/Tome_04/Philosophie_math%C3%A9matique,_article_4)

———. (1874). *Essai sur une manière de représenter les quantités imaginaires dans les constructions géométriques. Précédée d’une préface par M. J. Hoüel, et suivie d’un appendice contenant des extraits des "Annales de Gergonne", relatifs à la question des imaginaires*. 2nd ed. Paris: Gauthier-Villars. [http://catalogue.bnf.fr/ark:/12148/cb300261909](http://catalogue.bnf.fr/ark:/12148/cb300261909)

Arnauld, A., & Nicole, P. (1662). *La logique ou L’art de penser*. 1st ed. A Paris: Chez Charles Savreux, au pied de la Tour de Nostre Dame. [https://gallica.bnf.fr/ark:/12148/bpt6k574432.image](https://gallica.bnf.fr/ark:/12148/bpt6k574432.image)

———. (1682). *Logica Sive Ars Cogitandi: In Qua Praeter Vulgares Regulas Plura Nova Habentur Ad Rationem Dirigendam Utilia*. Editio optima & ultima. Lugduni Batavorum: Apud Jacobum Gaal. [https://books.google.com/books?id=XQVaAAAAcAAJ](https://books.google.com/books?id=XQVaAAAAcAAJ)

———. (1693). *Logic: Or, the Art of Thinking: In Which Besides the Common, Are Contain’d Many Excellent New Rules, Very Profitable for Directing of Reason, and Acquiring of Judgment, in Things as Well Relating to the Instruction of a Man’s Self, as of Others. In Four Parts. I. Consistin of Reflections Upon Ideas, or Upon the First Operation of the Mind, Which Is Called Apprehension, &c. II. Of Considerations of Men about Proper Judgments, &c. III. Of the Nature and Various Kinds of Reasoning, &c. IV. Treats of the Most Profitable Method for Demonstrating or Illustrating Any Truth to Which Is Added an Index to the Whole Book. For the Excellency of the Matter, Printed Many Times in French and Latin, and Now for Publick Good Translated into English by Several Hands*. 2nd ed. London: Printed by T. B. for John Taylor at the Ship at St. Paul’s Church Yard. [https://archive.org/details/logicorartofthin00arnaiala](https://archive.org/details/logicorartofthin00arnaiala)

Arnauld, A., Claire, P., Girbal, F., & Nicole, P. (1970). *La Logique: Ou, l’art de Penser: Contenant, Outre Les Regles Communes, Plusieurs Observations Nouvelles, Propres a Former Le Jugement*. Edited by Nicole, P. Paris: Flammarion. [https://philpapers.org/rec/ARNLLO-8](https://philpapers.org/rec/ARNLLO-8)


Bayes, T., & Price, R. (1763). An Essay Towards Solving a Problem in the Doctrine of Chances. By the Late Rev. Mr. Bayes, f. R. S. Communicated by Mr. Price, in a Letter to John Canton, a. M. F. R. s. *Philosophical Transactions (1683-1775) 53*: 370–418. [http://www.jstor.org/stable/105741](http://www.jstor.org/stable/105741)

Beasley, W. H., & Rodgers, J. L. (2009). Resampling Methods. In *The Sage Handbook of Quantitative Methods in Psychology*, edited by Millsap, R. E., & Maydeu-Olivares, A., 362–86. Thousand Oaks, California: Sage Publications Ltd. [https://psycnet.apa.org/doi/10.4135/9780857020994.n16](https://psycnet.apa.org/doi/10.4135/9780857020994.n16)

Bernoulli, D. (1729). Lettre XLVII. D. Bernoulli a Goldbach. St.-Petersbourg ce 6. octobre 1729. [https://commons.m.wikimedia.org/wiki/File:DanielBernoulliLetterToGoldbach-1729-10-06.jpg](https://commons.m.wikimedia.org/wiki/File:DanielBernoulliLetterToGoldbach-1729-10-06.jpg)

Bernoulli, J. (1713). *Ars conjectandi, opus posthumum. Accedit Tractatus de seriebus infinitis, et epistola gallicé scripta de ludo pilae reticularis*. Basileae: Impensis Thurnisiorum, Fratrum. [https://www.e-rara.ch/zut/doi/10.3931/e-rara-9001](https://www.e-rara.ch/zut/doi/10.3931/e-rara-9001)

Bochner, S. (1978). The Emergence of Analysis in the Renaissance and After. *Rice Institute Pamphlet - Rice University Studies 64* (2-3). [https://hdl.handle.net/1911/63315](https://hdl.handle.net/1911/63315)

Bonett, D. G., & Price, R. M. (2005). Inferential Methods for the Tetrachoric Correlation Coefficient. *Journal of Educational and Behavioral Statistics 30* (2): 213–25. [http://www.jstor.org/stable/3701350](http://www.jstor.org/stable/3701350)

Borenstein, M., Rothstein, H., & Cohen, J. (1997). Power and Precision : A Computer Program for Statistical Power Analysis and Confidence Intervals. *Computer Science*. [https://www.semanticscholar.org/paper/Power-and-precision-%3A-a-computer-program-for-power-Borenstein-Rothstein/f379f13a460b01488c35aea408e355436dbae839](https://www.semanticscholar.org/paper/Power-and-precision-%3A-a-computer-program-for-power-Borenstein-Rothstein/f379f13a460b01488c35aea408e355436dbae839)

Borenstein, M., Rothstein, H., Cohen, J., Schoenfeld, D., Berlin, J., & Lakatos, E. (2001). *Power and Precision: A Computer Program for Statistical Power Analysis and Confidence Intervals*. Englewood, NJ: Biostat, Inc. [https://books.google.com/books?id=tYg02XZBeNAC&printsec=frontcover&hl=de#v=onepage&q&f=false](https://books.google.com/books?id=tYg02XZBeNAC&printsec=frontcover&hl=de#v=onepage&q&f=false)

Bortz, J., & Schuster, C. (2010). *Statistik Für Human- Und Sozialwissenschaftler: Limitierte Sonderausgabe*. 7th ed. Springer-Lehrbuch. Berlin, Heidelberg: Springer. [https://doi.org/10.1007/978-3-642-12770-0](https://doi.org/10.1007/978-3-642-12770-0)

Bortz, J., & Weber, R. (2005). *Statistik: Für Human- Und Sozialwissenschaftler*. 6th ed. Springer-Lehrbuch. Berlin, Heidelberg: Springer. [https://doi.org/10.1007/b137571](https://doi.org/10.1007/b137571)

Boyer, C. B. (1968). *A History of Mathematics*. 1st ed. New York: John Wiley & Sons, Inc. [https://archive.org/details/ahistoryofmathematicscarlbboyer1968_315_t](https://archive.org/details/ahistoryofmathematicscarlbboyer1968_315_t)

Bravais, A. (1844). *Analyse Mathematique. Sur les probabilités des erreurs de situation d’un point*. Paris: Imprimerie Royale. [https://books.google.com/books?id=7g\_hAQAACAAJ](https://books.google.com/books?id=7g\_hAQAACAAJ)

Brown, M. B. (1977). Algorithm AS 116: The Tetrachoric Correlation and Its Asymptotic Standard Error. *Journal of the Royal Statistical Society. Series C (Applied Statistics) 26* (3): 343–51. [http://www.jstor.org/stable/2346985](http://www.jstor.org/stable/2346985)

Burckel, R. B. (2021). *Classical Analysis in the Complex Plane*. New York, NY: Springer. [https://doi.org/10.1007/978-1-0716-1965-0](https://doi.org/10.1007/978-1-0716-1965-0)

Cajori, F. (1919). Who Was the First Inventor of the Calculus? *The American Mathematical Monthly 26* (1): 15–20. [http://www.jstor.org/stable/2974042](http://www.jstor.org/stable/2974042)

Calinger, R. S. (2016). *Leonhard Euler: Mathematical Genius in the Enlightenment*. Princeton, New Jersey: Princeton University Press. [http://www.jstor.org/stable/j.ctv7h0smb](http://www.jstor.org/stable/j.ctv7h0smb)

Cardano, G. (1545a). *Ars magna or The Rules of Algebra*. New York: Dover (published 1993). [https://archive.org/details/arsmagnaorruleso0000card](https://archive.org/details/arsmagnaorruleso0000card)

———. (1545b). *Artis Magnae, Sive De Regvlis Algebraicis, Liber Vnvs*. S. P. D: Andreae Osiandro viro eruditiss. [https://web.archive.org/web/20220201093634/http://www.filosofia.unimi.it/cardano/testi/operaomnia/vol_4_s_4.pdf](https://web.archive.org/web/20220201093634/http://www.filosofia.unimi.it/cardano/testi/operaomnia/vol_4_s_4.pdf)

Cassirer, E. (1943). Newton and Leibniz. *The Philosophical Review 52* (4): 366–91. [http://www.jstor.org/stable/2180670](http://www.jstor.org/stable/2180670)

Cattell, R. B. (1966). The Scree Test for the Number of Factors. *Multivariate Behavioral Research 1* (2): 245–76. [https://doi.org/10.1207/s15327906mbr0102\_10](https://doi.org/10.1207/s15327906mbr0102\_10)

Cohen, J. (1977). *Statistical Power Analysis for the Behavioral Science*. Amsterdam: Elsevier Academic Press. [https://doi.org/10.1016/C2013-0-10517-X](https://doi.org/10.1016/C2013-0-10517-X)

———. (1988). *Statistical Power Analysis for the Behavioral Science*. 2nd ed. Hillsdale, NJ: Lawrence Erlbaum Associates. [https://www.scirp.org/(S(lz5mqp453edsnp55rrgjct55))/reference/ReferencesPapers.aspx?ReferenceID=2041144](https://www.scirp.org/(S(lz5mqp453edsnp55rrgjct55))/reference/ReferencesPapers.aspx?ReferenceID=2041144)

———. (1992). A Power Primer. *Psychological Bulletin 112* (1): 155–59. [https://doi.org/10.1037/0033-2909.112.1.15](https://doi.org/10.1037/0033-2909.112.1.15)

Collins, J. (1671). *Extracts from a letter from James Gregory to John Collins, 15 February 1671.* Cambridge: University Library. [https://archivesearch.lib.cam.ac.uk/repositories/2/archival_objects/566767](https://archivesearch.lib.cam.ac.uk/repositories/2/archival_objects/566767)

Cox, D. R., & Hinkley, D. V. (1974). *Theoretical Statistics*. 1st ed. New York: Chapman; Hall/CRC. [https://doi.org/10.1201/b14832](https://doi.org/10.1201/b14832)

Dallal, G. E. (1986). STATOOLS: Statistical Utility Programs. *The American Statistician 40* (3): 236–36. [http://www.jstor.org/stable/2684555](http://www.jstor.org/stable/2684555)

———. (1988). PITMAN: A FORTRAN Program for Exact Randomization Tests. *Computers and Biomedical Research 21* (1): 9–15. [https://doi.org/https://doi.org/10.1016/0010-4809(88)90037-7](https://doi.org/https://doi.org/10.1016/0010-4809(88)90037-7)

De Moivre, A. (1711). De mensura sortis, seu, de probabilitate eventuum in ludis a casu fortuito pendentibus. *Philosophical Transactions of the Royal Society of London 27* (329): 213–64. [https://doi.org/10.1098/rstl.1710.0018](https://doi.org/10.1098/rstl.1710.0018)

———. (1718). *The Doctrine of Chances: Or, A Method of Calculating the Probability of Events in Play*. 1st ed. London: W. Pearson. [https://books.google.com/books?id=3EPac6QpbuMC](https://books.google.com/books?id=3EPac6QpbuMC)

———. (1738). *The Doctrine of Chances: Or, A Method of Calculating the Probability of Events in Play*. 2nd ed. London: H. Woodfall. [https://books.google.com/books?id=PII\_AAAAcAAJ](https://books.google.com/books?id=PII\_AAAAcAAJ)

Descartes, R. (1664). *La Géométrie*. A Paris: Chez Charles Angot, Libraire Iuré, ruë S. Iacques, au Lion d’Or. M. DC. LXIV. Avec Privilege du Roy. [https://books.google.com/books?id=VtFcAAAAcAAJ](https://books.google.com/books?id=VtFcAAAAcAAJ)

———. (2012). *The Geometry of René Descartes: With a Facsimile of the First Edition*. Dover Books on Mathematics. New York: Dover Publications. [https://books.google.com/books?id=MB7F32p0y5MC](https://books.google.com/books?id=MB7F32p0y5MC)

Dessì, P., & Albury, W. R. (1997). Book Reviews. *History and Philosophy of Logic 18* (2): 121–22. [https://doi.org/10.1080/01445349708837281](https://doi.org/10.1080/01445349708837281)

Digby, P. G. N. (1983). Approximating the Tetrachoric Correlation Coefficient. *Biometrics 39* (3): 753–57. [http://www.jstor.org/stable/2531104](http://www.jstor.org/stable/2531104)

Divakaran, P. P. (2007). The First Textbook of Calculus: "Yuktibhāṣā". *Journal of Indian Philosophy 35* (5/6): 417–43. [http://www.jstor.org/stable/23497280](http://www.jstor.org/stable/23497280)

Efron, B. (1979). Bootstrap Methods: Another Look at the Jackknife. *The Annals of Statistics 7* (1): 1–26. [https://doi.org/10.1214/aos/1176344552](https://doi.org/10.1214/aos/1176344552)

———. (1981). Nonparametric Estimates of Standard Error: The Jackknife, the Bootstrap and Other Methods. *Biometrika 68* (3): 589–99. [https://doi.org/10.1093/biomet/68.3.589](https://doi.org/10.1093/biomet/68.3.589)

———. (1982). *The Jackknife, the Bootstrap and Other Resampling Plans*. CBMS-NSF Regional Conference Series in Applied Mathematics, Monograph 38. Philadelphia: SIAM, Society for Industrial and Applied Mathematics. [https://doi.org/10.1137/1.9781611970319](https://doi.org/10.1137/1.9781611970319)

Edgington, E. S. (1964). Randomization Tests. *The Journal of Psychology: Interdisciplinary and Applied 57* (2): 445–49. [https://doi.org/10.1080/00223980.1964.9916711](https://doi.org/10.1080/00223980.1964.9916711)

———. (1980). Validity of Randomization Tests for One-Subject Experiments. *Journal of Educational Statistics 5* (3): 235–51. [https://doi.org/10.2307/1164966](https://doi.org/10.2307/1164966)

———. (1987). Randomized Single-Subject Experiments and Statistical Tests. *Journal of Counseling Psychology 34* (4): 437–42. [https://doi.org/10.1037/0022-0167.34.4.437](https://doi.org/10.1037/0022-0167.34.4.437)

———. (2011). Randomization Tests. In *International Encyclopedia of Statistical Science*, edited by Lovric, M., 1182–83. Berlin, Heidelberg: Springer. [https://doi.org/10.1007/978-3-642-04898-2_56](https://doi.org/10.1007/978-3-642-04898-2_56)

Edgington, E. S., & Onghena, P. (2007). *Randomization Tests*. 4th ed. New York: Chapman and Hall/CRC. [https://doi.org/10.1201/9781420011814](https://doi.org/10.1201/9781420011814)

Elderton, W. P. (1902). Tables for Testing the Goodness of Fit of Theory to Observation. *Biometrika 1* (2): 155–63. [https://doi.org/10.1093/biomet/1.2.155](https://doi.org/10.1093/biomet/1.2.155)

Ettingshausen, A. (1826). *Die combinatorische Analysis: als Vorbereitungslehre zum Studium der theoretischen höhern Mathematik*. Wien: Wallishausser. [https://archive.org/details/diecombinatoris00ettigoog/page/n70/mode/1up?view=theater](https://archive.org/details/diecombinatoris00ettigoog/page/n70/mode/1up?view=theater)

Euler, L. (1738). De progressionibus transcendentibus seu quarum termini generales algebraice dari nequeunt. *Commentarii Academiae Scientiarum Petropolitanae 5*: 36–57. [https://scholarlycommons.pacific.edu/euler-works/19/](https://scholarlycommons.pacific.edu/euler-works/19/)

———. (1748a). *Introductio in analysin infinitorum*. Vol. 1. Lausannae: Apud Marcum-Michaelem Bousqujet & Socio. [https://scholarlycommons.pacific.edu/euler-works/101/](https://scholarlycommons.pacific.edu/euler-works/101/)

———. (1748b). *Introductio in analysin infinitorum*. Vol. 2. Lausannae: Apud Marcum-Michaelem Bousqujet & Socio. [https://scholarlycommons.pacific.edu/euler-works/102/](https://scholarlycommons.pacific.edu/euler-works/102/)

———. (1753). Calcul de la probabilité dans le jeu de rencontre. *Mémoires de l’académie Des Sciences de Berlin 7*: 255–70. [https://scholarlycommons.pacific.edu/euler-works/201/]()

Everitt, P. F. (1910). Tables of the Tetrachoric Functions for Fourfold Correlation Tables. *Biometrika 7* (4): 437–51. [https://doi.org/10.1093/biomet/7.4.437](https://doi.org/10.1093/biomet/7.4.437)

———. (1912). Supplementary Tables for Finding the Correlation Coefficient from Tetrachoric Groupings. *Biometrika 8* (3/4): 385–95. [http://www.jstor.org/stable/2331587](http://www.jstor.org/stable/2331587)

Ewald, W. B. (1996a). *From Kant to Hilbert: A Source Book in the Foundations of Mathematics*. Vol. 1. Oxford: Oxford University Press OUP. [https://philpapers.org/rec/BRAFKT](https://philpapers.org/rec/BRAFKT)

———. (1996b). *From Kant to Hilbert: A Source Book in the Foundations of Mathematics*. Vol. 2. Oxford: Oxford University Press OUP. [https://philpapers.org/rec/EWAFKT-4](https://philpapers.org/rec/EWAFKT-4)

Feigenbaum, L. (1985). Brook Taylor and the Method of Increments. *Archive for History of Exact Sciences 34* (1/2): 1–140. [http://www.jstor.org/stable/41133765](http://www.jstor.org/stable/41133765)

Finkel, B. F. (1897). Biography: Leonhard Euler. *The American Mathematical Monthly 4* (12): 297–302. [http://www.jstor.org/stable/2968971](http://www.jstor.org/stable/2968971)

Finocchiaro, M. A. (1997). The Port-Royal Logic’s Theory of Argument. *Argumentation 11* (4): 393–410. [https://doi.org/10.1023/A:1007756105432](https://doi.org/10.1023/A:1007756105432)

Fisher, R. A. (1915). Frequency Distribution of the Values of the Correlation Coefficient in Samples from an Indefinitely Large Population. *Biometrika 10* (4): 507–21. [https://doi.org/10.2307/2331838](https://doi.org/10.2307/2331838)

———. (1918). The Correlation Between Relatives on the Supposition of Mendelian Inheritance. *Philosophical Transactions of the Royal Society of Edinburgh 52*: 399–433. [https://hdl.handle.net/2440/15097](https://hdl.handle.net/2440/15097)

———. (1921). On the "Probable Error" of a Coefficient of Correlation Deduced from a Small Sample. *Metron 1*: 3–32. [https://hdl.handle.net/2440/15169](https://hdl.handle.net/2440/15169)

———. (1922). On the Interpretation of χ2 from Contingency Tables, and the Calculation of p. *Journal of the Royal Statistical Society 85* (1): 87–94. [https://doi.org/10.2307/2340521](https://doi.org/10.2307/2340521)

———. (1924). On a Distribution Yielding the Error Functions of Several Well-Known Statistics. *Proceedings International Mathematical Congress, Toronto 2*: 805–13. [https://repository.rothamsted.ac.uk/item/8w2q9/on-a-distribution-yielding-the-error-functions-of-several-well-known-statistics](https://repository.rothamsted.ac.uk/item/8w2q9/on-a-distribution-yielding-the-error-functions-of-several-well-known-statistics)

———. (1925). *Statistical Methods for Research Workers*. 1st ed. Edinburgh: Oliver; Boyd. [https://www.scirp.org/(S(i43dyn45teexjx455qlt3d2q))/reference/ReferencesPapers.aspx?ReferenceID=2056938](https://www.scirp.org/(S(i43dyn45teexjx455qlt3d2q))/reference/ReferencesPapers.aspx?ReferenceID=2056938)

———. (1926). The Arrangement of Field Experiments. *Journal of the Ministry of Agriculture 33*: 503–15. [https://doi.org/10.23637/rothamsted.8v61q](https://doi.org/10.23637/rothamsted.8v61q)

———. (1935). *The Design of Experiments*. 1st ed. Edinburgh: Oliver & Boyd. [https://psycnet.apa.org/record/1939-04964-000](https://psycnet.apa.org/record/1939-04964-000)

———. (1954). *Statistical Methods for Research Workers*. 12th ed. Edinburgh: Oliver; Boyd. [https://www.worldcat.org/de/title/statistical-methods-for-research-workers/oclc/312138](https://www.worldcat.org/de/title/statistical-methods-for-research-workers/oclc/312138)

———. (1966). *The Design of Experiments*. 8th ed. Edinburgh: Hafner. [https://scirp.org/reference/referencespapers.aspx?referenceid=895747](https://scirp.org/reference/referencespapers.aspx?referenceid=895747)

———. (1971). *The Design of Experiments*. 9th ed. New York: Hafner Press. [https://home.iitk.ac.in/~shalab/anova/DOE-RAF.pdf](https://home.iitk.ac.in/~shalab/anova/DOE-RAF.pdf)

———. (1973). *Statistical Methods for Research Workers*. 14th ed. New York: ‎Hafner Publishing Company. [https://www.amazon.com/Statistical-methods-research-workers-Fourteenth/dp/0050021702](https://www.amazon.com/Statistical-methods-research-workers-Fourteenth/dp/0050021702)

———. (2017). *Statistical Methods for Research Workers*. 14th rev. ed. New Delhi: ‎‎Gyan Books. [https://www.amazon.com/Statistical-Methods-Research-Workers-Fisher/dp/9351286584](https://www.amazon.com/Statistical-Methods-Research-Workers-Fisher/dp/9351286584)

Galton, F. (1877). Typical Laws of Heredity 1. *Nature 15*: 492–95. [https://doi.org/10.1038/015492a0](https://doi.org/10.1038/015492a0)

Gauss, C. F. (1809). *Theoria motvs corporvm coelestivm in sectionibvs conicis Solem ambientivm*. Hambvrgi: Svmtibvs F. Perthes et I. H. Besser. [https://archive.org/details/theoriamotuscor00gausgoog/page/n1/mode/1up](https://archive.org/details/theoriamotuscor00gausgoog/page/n1/mode/1up)

———. (1823). *Theoria Combinationis Observationum Erroribus Minimis Obnoxiae*. Göttingen: apud Henricum Dieterich. [https://doi.org/10.3931/e-rara-2857](https://doi.org/10.3931/e-rara-2857)

———. (1828). *Theoria residuorum biquadraticorum: commentatio prima*. Gottingae: typis Dieterichianis. [https://doi.org/10.3931/e-rara-61066](https://doi.org/10.3931/e-rara-61066)

———. (1832). *Theoria residuorum biquadraticorum: commentatio secunda*. Gottingae: typis Dieterichianis. [https://doi.org/10.3931/e-rara-61067](https://doi.org/10.3931/e-rara-61067)

Gerhardt, C. I. (1848). *Die Entdeckung der Differentialrechnung durch Leibniz mit Benutzung der Leibnizischen Manuscripte auf der Königlichen Bibliothek zu Hannover*. Halle: H. W. Schmidt. [https://doi.org/10.3931/e-rara-4272](https://doi.org/10.3931/e-rara-4272)

Good, P. (2006). *Resampling Methods*. 3rd ed. Basel: Birkhäuser. [https://www.amazon.com/Resampling-Methods-Practical-Guide-Analysis/dp/0817643869](https://www.amazon.com/Resampling-Methods-Practical-Guide-Analysis/dp/0817643869)

Gosset, W. S. (1908). The Probable Error of a Mean. *Biometrika 6* (1): 1–25. [https://doi.org/10.2307/2331554](https://doi.org/10.2307/2331554)

Gregory, J. (1668a). *Exercitationes Geometricae*. Londini: Typis Guilielmi Godbid, & Impensis Mosis Pitt Bibliopolae, in vico vulgo vocato Little Britain. [https://books.google.com/books?id=ZtRYqgyD5YsC](https://books.google.com/books?id=ZtRYqgyD5YsC)

———. (1668b). *Geometriae Pars Universalis, Inferuiens Quantitatum Curvarum transmutationi & mensurae*. Patavii: Typis Heredum Pauli Frambotti. [https://archive.org/details/gregory_universalis](https://archive.org/details/gregory_universalis)

Gregory, J., & Collins, J. (1939). *James Gregory: Tercentenary Memorial Volume, Containing His Correspondence with John Collins and His Hitherto Unpublished Mathematical Manuscripts, Together with Addresses and Essays Communicated to the Royal Society of Edinburgh, July 4, 1938*. Edited by Turnbull, H.W., & Royal Society of Edinburgh. Edinburgh: Royal Society of Edinburgh. [https://books.google.com/books?id=\_eruAAAAMAAJ](https://books.google.com/books?id=\_eruAAAAMAAJ)

Gupta, R. C. (1974). An Indian Form of Third Order Taylor Series Approximation of the Sine. *Historia Mathematica 1* (3): 287–89. [https://doi.org/10.1016/0315-0860(74)90067-6](https://doi.org/10.1016/0315-0860(74)90067-6)

Hacking, I. (1975). *The Emergence of Probability: A Philosophical Study of Early Ideas About Probability, Induction and Statistical Inference*. Cambridge University Press. [https://philpapers.org/rec/HACTEO-8](https://philpapers.org/rec/HACTEO-8)

Hald, A. (1990). *History of Probability and Statistics and Their Applications before 1750*. New York: Wiley Series in Probability; Statistics, Wiley-Interscience. [https://onlinelibrary.wiley.com/doi/book/10.1002/0471725161](https://onlinelibrary.wiley.com/doi/book/10.1002/0471725161)

———. (1998). *A History of Mathematical Statistics from 1750 to 1930*. New York: Wiley. [https://www.abebooks.com/History-Mathematical-Statistics-1750-1930-Wiley/31042381048/bd](https://www.abebooks.com/History-Mathematical-Statistics-1750-1930-Wiley/31042381048/bd)

———. (2003). *A History of Probability and Statistics and Their Applications before 1750*. Hoboken, NJ: Wiley-Interscience. [https://www.wiley.com/en-us/A+History+of+Probability+and+Statistics+and+Their+Applications+before+1750-p-9780471725176](https://www.wiley.com/en-us/A+History+of+Probability+and+Statistics+and+Their+Applications+before+1750-p-9780471725176)

———. (2007). *A History of Parametric Statistical Inference from Bernoulli to Fisher, 1713–1935*. New York: Springer. [https://link.springer.com/book/10.1007/978-0-387-46409-1#bibliographic-information](https://link.springer.com/book/10.1007/978-0-387-46409-1#bibliographic-information)

Heath, T. L. (1908a). *The Thirteen Books of Euclid’s Elements Translated from the Text of Heiberg with Introduction and Commentary*. Vol. I Introduction and Books I, II. Cambridge: University Press. [https://archive.org/details/thirteenbookseu02heibgoog](https://archive.org/details/thirteenbookseu02heibgoog)

———. (1908b). *The Thirteen Books of Euclid’s Elements Translated from the Text of Heiberg with Introduction and Commentary*. Vol. II Books III–IX. Cambridge: University Press. [https://archive.org/details/thirteenbookseu00heibgoog](https://archive.org/details/thirteenbookseu00heibgoog)

———. (1908c). *The Thirteen Books of Euclid’s Elements Translated from the Text of Heiberg with Introduction and Commentary*. Vol. III Books X–XIII and Appendix. Cambridge: University Press. [https://archive.org/details/thirteenbookseu03heibgoog](https://archive.org/details/thirteenbookseu03heibgoog)

———. (1921a). *A History of Greek Mathematics. Vol. I From Thales to Euclid*. Oxford: At the Clarendon Press. [https://archive.org/details/cu31924008704219](https://archive.org/details/cu31924008704219)

———. (1921b). *A History of Greek Mathematics. Vol. II From Aristarchus to Diophantus*. Oxford: At the Clarendon Press. [https://archive.org/details/historyofgreekma029268mbp/page/n5/mode/1up](https://archive.org/details/historyofgreekma029268mbp/page/n5/mode/1up)

Helmert, F. R. (1876). Ueber die Wahrscheinlichkeit der Potenzsummen der Beobachtungsfehler und über einige damit im Zusammenhange stehende Fragen. *Zeitschrift für Mathematik und Physik 21*: 192–219. [https://gdz.sub.uni-goettingen.de/id/PPN599415665_0021](https://gdz.sub.uni-goettingen.de/id/PPN599415665_0021)

Howie, J. M. (2001). The Logarithmic and Exponential Functions. In *Real Analysis*, 165–79. London: Springer. [https://doi.org/10.1007/978-1-4471-0341-7_6](https://doi.org/10.1007/978-1-4471-0341-7_6)

HP Inc. (2017). *HP Prime Graphing Calculator: Manual*. 3rd ed. Stanford Research Park, Palo Alto, California, U.S.: HP Development Company, L.P. [https://www.hpcalc.org/details/7445](https://www.hpcalc.org/details/7445)

Jahnke, E., & Emde, F. (1909). *Funktionentafeln Mit Formeln Und Kurven*. 1st ed. Mathematisch-Physikalische Schriften für Ingenieure Und Studierende. Leipzig: B. G. Teubner. [https://books.google.com/books?id=BVRzvgAACAAJ](https://books.google.com/books?id=BVRzvgAACAAJ)

———. (1933). *Funktionentafeln Mit Formeln Und Kurven*. 2nd ed. Mathematisch-Physikalische Schriften für Ingenieure Und Studierende. Leipzig: B. G. Teubner. [https://books.google.com/books?id=SB5tAAAAMAAJ](https://books.google.com/books?id=SB5tAAAAMAAJ)

———. (1938). *Funktionentafeln Mit Formeln Und Kurven*. 3rd ed. Leipzig: Teubner. [https://books.google.com/books?id=5vlrAAAAIAAJ](https://books.google.com/books?id=5vlrAAAAIAAJ)

———. (1945). *Funktionentafeln Mit Formeln Und Kurven*. 4th ed. Dover Book. New York: Dover Publications. [https://archive.org/details/tablesoffunction0000jahn](https://archive.org/details/tablesoffunction0000jahn)

Jahnke, E., Emde, F., & Lösch, F. (1966). *Tafeln höherer Funktionen*. 7th ed. Stuttgart: B. G. Teubner Verlagsgesellschaft. [https://dokumen.pub/jahnke-emde-lsch-tafeln-hherer-funktionen-tables-of-higher-functions-7nbsped.html](https://dokumen.pub/jahnke-emde-lsch-tafeln-hherer-funktionen-tables-of-higher-functions-7nbsped.html)

Jyesthadeva. (1530). *Ganita-Yukti-Bhasa (Rationales in Mathematical Astronomy)*. Kingdom of Cochin: Kerala school of astronomy; mathematics. [https://archive.org/details/raswhishNA-124](https://archive.org/details/raswhishNA-124)

Katz, V. (2009). *Elementary Probability. A History of Mathematics: An Introduction*. 3rd ed. London: Pearson. [https://www.gettextbooks.com/isbn/9780321387004/](https://www.gettextbooks.com/isbn/9780321387004/)

Kendall, M. G. (1938). A New Measure of Rank Correlation. *Biometrika 30* (1/2): 81–93. [http://www.jstor.org/stable/2332226](http://www.jstor.org/stable/2332226)

Knoll, F. (1939). Funktionentafeln mit Formeln und Kurven. *Monatshefte Für Mathematik Und Physik*. [https://doi.org/10.1007/BF01695545](https://doi.org/10.1007/BF01695545)

Kossovsky, A. E. (2020). The Bitter Dispute with Leibniz over Calculus Priority. In *The Birth of Science*, 161–61. Cham: Springer International Publishing. [https://doi.org/10.1007/978-3-030-51744-1_33](https://doi.org/10.1007/978-3-030-51744-1_33)

Koyama, S. -J., & Kurokawa, N. (2005). Euler’s Integrals and Multiple Sine Functions. *Proceedings of the American Mathematical Society 133* (5): 1257–65. [http://www.jstor.org/stable/4097775](http://www.jstor.org/stable/4097775)

Krauth, J. (1993). *Einführung in die Konfigurationsfrequenzanalyse (KFA): Ein multivariates nichtparametrisches Verfahren zum Nachweis und zur Interpretation von Typen und Syndromen*. Weinheim: BELTZ Psychologie Verlags Union. [https://books.google.com/books?id=4oeIAAAACAAJ](https://books.google.com/books?id=4oeIAAAACAAJ)

Krauth, J., & Lienert, G. (1973). *Die Konfigurationsfrequenzanalyse (KFA) und ihre Anwendung in Psychologie und Medizin: Ein multivariates nichtparametrisches Verfahren zum Aufdeckung von Typen und Syndromen; mit 70 Tab*. Freiburg: Alber. [https://d-nb.info/740097938](https://d-nb.info/740097938)

Lehmann, E. L. (1993). The Fisher, Neyman-Pearson Theories of Testing Hypotheses: One Theory or Two? *Journal of the American Statistical Association 88* (424): 1242–49. [https://doi.org/10.1080/01621459.1993.10476404](https://doi.org/10.1080/01621459.1993.10476404)

Lehmann, E. L., & Romano, J. P. (2008). *Testing Statistical Hypotheses*. 3rd ed. Springer Texts in Statistics. New York: Springer. [https://books.google.com/books?id=IlJE_9_e8UEC](https://books.google.com/books?id=IlJE_9_e8UEC)

Leibniz, G. W. (1682). De vera proportione circuli ad quadratum circumscriptum in numeris rationalibus. *Acta Eruditorum Anno MDCLXXXII*, 41–46. [https://books.google.com/books/about/Acta_eruditorum.html?id=E7MasYIsMKQC](https://books.google.com/books/about/Acta_eruditorum.html?id=E7MasYIsMKQC)

 ———. (1684). Nova methodus pro maximis et minimis itemque tangentibus, quae nec fractas nec irrationales quantitates moratur, et singulare pro illis calculi genus, per G.G.L. *Acta Eruditorum Anno MDCLXXXIV*, 467–73. [https://gdz.sub.uni-goettingen.de/id/PPN788262599](https://gdz.sub.uni-goettingen.de/id/PPN788262599)

———. (1686). De geometria recondita et analysi indivisibilium atque infinitorum. *Acta Eruditorum Anno MDCLXXXVI*, 292–300. [https://gdz.sub.uni-goettingen.de/id/PPN788262947](https://gdz.sub.uni-goettingen.de/id/PPN788262947)

———. (1693). Supplementum geometriae dimensoriae, seu generalissima omnium tetragonismorum effectio per motum: similiterque multiplex constructio lineae ex data tangentium conditione. *Acta Eruditorum Anno MDCLXCIII*, 385–92. [https://archive.org/details/s1id13206590](https://archive.org/details/s1id13206590)

———. (2012). *Sämtliche Schriften und Briefe*. Edited by Berlin-Brandenburgischen Akademie der Wissenschaften, & Akademie der Wissenschaften zu Göttingen. Vol. 6: 1673–1676: Arithmetische Kreisquadratur. 7: Mathematische Schriften. Berlin: Akademie Verlag. [https://doi.org/10.26015/adwdocs-1924](https://doi.org/10.26015/adwdocs-1924)

Long, M. A., Berry, K. J., & Mielke, P. W. (2009). Tetrachoric Correlation: A Permutation Alternative. *Educational and Psychological Measurement 69* (3): 429–37. [https://doi.org/10.1177/0013164408324463](https://doi.org/10.1177/0013164408324463)

Lüroth, J. (1876). Vergleichung von zwei Werthen des wahrscheinlichen Fehlers. *Astronomische Nachrichten 87* (14): 209–20. [https://doi.org/10.1002/asna.18760871402](https://doi.org/10.1002/asna.18760871402)

MacMohan, P. A. (1915). *Combinatory Analysis*. Vol. 1. Cambridge: University Press. [https://openlibrary.org/works/OL1109964W/Combinatory_analysis](https://openlibrary.org/works/OL1109964W/Combinatory_analysis)

———. (1916). *Combinatory Analysis*. Vol. 2. Cambridge: University Press. [https://books.google.com/books/about/Combinatory_Analysis.html?id=A_PuAAAAMAAJ&redir_esc=y](https://books.google.com/books/about/Combinatory_Analysis.html?id=A_PuAAAAMAAJ&redir_esc=y)

Malet, A. (2006). Renaissance Notions of Number and Magnitude. *Historia Mathematica 33* (1): 63–81. [https://doi.org/10.1016/j.hm.2004.11.011](https://doi.org/10.1016/j.hm.2004.11.011)

Mann, H. B., & Whitney, D. R. (1947). On a Test of Whether one of Two Random Variables is Stochastically Larger than the Other. *The Annals of Mathematical Statistics 18* (1): 50–60. [https://doi.org/10.1214/aoms/1177730491](https://doi.org/10.1214/aoms/1177730491)

Marsden, J., & Weinstein, A. (1985). Exponentials and Logarithms. In *Calculus i*, 307–35. New York, NY: Springer. [https://doi.org/10.1007/978-1-4612-5024-1_9](https://doi.org/10.1007/978-1-4612-5024-1_9)

McNemar, Q. (1947). Note on the Sampling Error of the Difference Between Correlated Proportions or Percentages. *Psychometrika 12* (2): 153–157. [https://doi.org/10.1007/BF02295996](https://doi.org/10.1007/BF02295996)

Mehta, C. R., Patel, N. R., Senchaudhuri, P., & Corcoran, C. D. (2014). StatXact. In *Wiley StatsRef: Statistics Reference Online*. John Wiley & Sons, Ltd. [https://doi.org/10.1002/9781118445112.stat04892](https://doi.org/10.1002/9781118445112.stat04892)

Merzbach, U. C., & Boyer, C. B. (2011). *A History of Mathematics*. 3rd ed. Hoboken, New Jersey: John Wiley & Sons, Inc. [https://books.google.com/books/about/A_History_of_Mathematics.html?id=bR9HAAAAQBAJ](https://books.google.com/books/about/A_History_of_Mathematics.html?id=bR9HAAAAQBAJ)

Metropolis, N., & Ulam, S. (1949). The Monte Carlo Method. *Journal of the American Statistical Association 44* (247): 335–41. [https://doi.org/10.1080/01621459.1949.10483310](https://doi.org/10.1080/01621459.1949.10483310)

Meyberg, K., & Vachenauer, P. (2001a). *Höhere Mathematik 1: Differential- und Integralrechnung Vektor- und Matrizenrechnung*. Berlin, Heidelberg: Springer. [https://doi.org/10.1007/978-3-642-56654-7](https://doi.org/10.1007/978-3-642-56654-7)

———. (2001b). *Höhere Mathematik 2: Differentialgleichungen, Funktionentheorie, Fourier-Analysis, Variationsrechnung*. Berlin, Heidelberg: Springer. [https://doi.org/10.1007/978-3-642-56655-4](https://doi.org/10.1007/978-3-642-56655-4)

Neugebauer, O. (1969). *The Exact Sciences in Antiquity*. 2nd ed. Acta Historica Scientiarum Naturalium Et Medicinalium. New York: Dover Publications. [https://books.google.com/books?id=JVhTtVA2zr8C](https://books.google.com/books?id=JVhTtVA2zr8C)

Newton, I. (1669). *De analysi per aequationes numero terminorum infinitas*. Sent by Dr. Barrow to Mr. Collins in a Letter dated July 31. 1669. London: Royal Society Library. [https://www.newtonproject.ox.ac.uk/view/texts/normalized/NATP00204](https://www.newtonproject.ox.ac.uk/view/texts/normalized/NATP00204)

———. (1687). *Philosophiae naturalis principia mathematica*. 1st ed. Londini: Jussu Societatis Regiae ac typis Josephi Streater, prostant venales apud Sam. Smith. [https://books.google.com/books?id=XJwx0lnKvOgC](https://books.google.com/books?id=XJwx0lnKvOgC)

———. (1711). *Analysis per quantitatum series, fluxiones, ac differentias: cum enumeratione linearum tertii ordinis*. Londini: ex officina Pearsoniana. [https://doi.org/10.3931/e-rara-8934](https://doi.org/10.3931/e-rara-8934)

———. (1713). *Philosophiae naturalis principia mathematica*. 2nd ed. Cantabrigiae: Newton, I. [https://digital.onb.ac.com/OnbViewer/viewer.faces?doc=ABO_%2BZ180810706&order=7&view=SINGLE](https://digital.onb.ac.com/OnbViewer/viewer.faces?doc=ABO_%2BZ180810706&order=7&view=SINGLE)

———. (1726). *Philosophiae naturalis principia mathematica*. 3rd ed. Londini: Apud Guil. & Joh. Innys. [https://gdz.sub.uni-goettingen.de/id/PPN512261393](https://gdz.sub.uni-goettingen.de/id/PPN512261393)

Neyman, J. (1923). Sur les applications de la theorie des probabilites aux experience agricoles: Essay de principes. *Roczniki Nank Polniczek 10*: 1–51. [https://link.springer.com/chapter/10.1007/978-94-015-8816-4_10](https://link.springer.com/chapter/10.1007/978-94-015-8816-4_10)

———. (1937). Outline of a Theory of Statistical Estimation Based on the Classical Theory of Probability. *Philosophical Transactions of the Royal Society of London A, Mathematical and physical sciences, 236* (767): 333–80. [https://doi.org/10.1098/rsta.1937.0005](https://doi.org/10.1098/rsta.1937.0005)

Neyman, J., & Pearson, E. S. (1933). On the problem of the most efficient tests of statistical hypotheses. *Phil. Trans. R. Soc. Lond. A. 231* (694–706): 289–337. [https://doi.org/10.1098/rsta.1933.0009](https://doi.org/10.1098/rsta.1933.0009)

Olkin, I., & Pratt, J. W. (1958). Unbiased Estimation of Certain Correlation Coefficients. *The Annals of Mathematical Statistics 29* (1): 201–11. [https://doi.org/10.1214/aoms/1177706717](https://doi.org/10.1214/aoms/1177706717)

Pascal, B. (1665). *Traite´ du triangle arithmetique : auec quelques autres petits traitez sur la mesme matie‘re*. A Paris: Chez Guillaume Desprez, rue Saint Jacques, a Saint Prosper. [https://gallica.bnf.fr/ark:/12148/btv1b86262012.image#](https://gallica.bnf.fr/ark:/12148/btv1b86262012.image#)

Pearson, K. (1895). Contributions to the Mathematical Theory of Evolution. II. Skew Variation in Homogeneous Material. *Philosophical Transactions of the Royal Society A: Mathematical, Physical and Engineering Sciences 186*: 343–414. [https://doi.org/10.1098/rsta.1895.0010](https://doi.org/10.1098/rsta.1895.0010)

———. (1900a). I. Mathematical Contributions to the Theory of Evolution. —VII. On the Correlation of Characters Not Quantitatively Measurable. *Philosophical Transactions of the Royal Society of London. Series A, Containing Papers of a Mathematical or Physical Character 195* (262-273): 1–47. [https://doi.org/10.1098/rsta.1900.0022](https://doi.org/10.1098/rsta.1900.0022)

———. (1900b). X. On the criterion that a given system of deviations from the probable in the case of a correlated system of variables is such that it can be reasonably supposed to have arisen from random sampling. *The London, Edinburgh, and Dublin Philosophical Magazine and Journal of Science 50* (302): 157–75. [https://doi.org/10.1080/14786440009463897](https://doi.org/10.1080/14786440009463897)

———. (1904). *Mathematical contributions to the theory of evolution. XIII. On the Theory of Contingency and its Relation to Association and Normal Correlation. Drapers’ Company research memoirs*. Biometric Series, I. Department of Applied Mathematics. University College, University of London: Dulau & Co. [https://openlibrary.org/books/OL24168960M](https://openlibrary.org/books/OL24168960M)

———. (1905). *Mathematical contributions to the theory of evolution. XIV. On the general theory of skew correlation and non-linear regression. Drapers’ Company research memoirs*. Biometric Series, II. Department of Applied Mathematics. University College, University of London: Dulau & Co. [https://openlibrary.org/books/OL6555066M](https://openlibrary.org/books/OL6555066M)

———. (1909). On a New Method of Determining Correlation Between a Measured Character a, and a Character b, of Which Only the Percentage of Cases Wherein b Exceeds (or Falls Short of) a Given Intensity Is Recorded for Each Grade of a. *Biometrika 7* (1/2): 96–105. [http://www.jstor.org/stable/2345365](http://www.jstor.org/stable/2345365)

———. (1914). On the Probability That Two Independent Distributions of Frequency Are Really Samples of the Same Population, with Special Reference to Recent Work on the Identity of Trypanosome Strains. *Biometrika 10*: 85–154. [https://doi.org/10.1093/biomet/10.1.85](https://doi.org/10.1093/biomet/10.1.85)

Pitman, E. J. G. (1937a). Significance Tests Which May Be Applied to Samples from Any Populations. *Supplement to the Journal of the Royal Statistical Society 4* (1): 119–30. [http://www.jstor.org/stable/2984124](http://www.jstor.org/stable/2984124)

———. (1937b). Significance Tests Which May Be Applied to Samples from Any Populations. II. The Correlation Coefficient Test. *Supplement to the Journal of the Royal Statistical Society 4* (2): 225–32. [http://www.jstor.org/stable/2983647](http://www.jstor.org/stable/2983647)

———. (1938). Significance Tests Which May Be Applied to Samples from Any Populations: III. The Analysis of Variance Test. *Biometrika 29* (3/4): 322–35. [http://www.jstor.org/stable/2332008](http://www.jstor.org/stable/2332008)

Peladeau, N. (1993). SIMSTAT: Bootstrap computer simulation and statistical program for IBM personal computers. *Behavior Research Methods, Instruments, & Computers 25* (3): 410–13. [https://doi.org/10.3758/BF03204533](https://doi.org/10.3758/BF03204533)

Plackett, R. L. (1983). Karl Pearson and the Chi-Squared Test. *International Statistical Review / Revue Internationale de Statistique 51* (1): 59–72. [https://doi.org/10.2307/1402731](https://doi.org/10.2307/1402731)

Quenouille, M. H. (1949). Approximate Tests of Correlation in Time-Series. *Journal of the Royal Statistical Society B, Methodological, 11* (1): 68–84. [https://doi.org/10.1111/j.2517-6161.1949.tb00023.x](https://doi.org/10.1111/j.2517-6161.1949.tb00023.x)

Rabinovitch, N. L. (1970). Rabbi Levi Ben Gershon and the Origins of Mathematical Induction. *Archive for History of Exact Sciences, no. 3*: 237–48. [http://www.jstor.org/stable/41133303](http://www.jstor.org/stable/41133303)

Ratdolt, E. (1482). *Euclides. Elementa geometriae*. Edited by Campano da Novara. Venice: Erhard Ratdolt. [https://catalog.lindahall.org/discovery/delivery/01LINDAHALL_INST:LHL/1286816310005961](https://catalog.lindahall.org/discovery/delivery/01LINDAHALL_INST:LHL/1286816310005961)

Remmert, R. (1998). The Gamma Function. In *Classical Topics in Complex Function Theory*, 33–72. New York, NY: Springer. [https://doi.org/10.1007/978-1-4757-2956-6_2](https://doi.org/10.1007/978-1-4757-2956-6_2)

Remmert, R., & Schumacher, G. (2002). *Funktionentheorie 1*. Berlin, Heidelberg: Springer Berlin Heidelberg. [https://doi.org/10.1007/978-3-642-56281-5](https://doi.org/10.1007/978-3-642-56281-5)

Roero, C. S. (2005). Chapter 4 - Gottfried Wilhelm Leibniz, First Three Papers on the Calculus (1684, 1686, 1693). In *Landmark Writings in Western Mathematics 1640-1940*, edited by Grattan-Guinness, I., Cooke, R., Corry, L., Crépel, P., & Guicciardini, N., 46–58. Amsterdam: Elsevier Science. [https://doi.org/https://doi.org/10.1016/B978-044450871-3/50085-1](https://doi.org/https://doi.org/10.1016/B978-044450871-3/50085-1)

Rosenthal, A. (1951). The History of Calculus. *The American Mathematical Monthly 58* (2): 75–86. [http://www.jstor.org/stable/2308368](http://www.jstor.org/stable/2308368)

Scambor, C. (1997). *Permutationsverfahren in Einzelfallstudien: Grundlagen, Anwendungen und Teststärke*. Universität Graz: Naturwissenschaftliche Fakultät. [https://doi.org/10.13140/RG.2.2.28632.06405](https://doi.org/10.13140/RG.2.2.28632.06405)

Scambor, C., & Schrausser, D. G. (2023). Introduction (part II, permutation tests for repeated measurement designs). *Thesis Chapters. Academia*. [https://www.academia.edu/94993376](https://www.academia.edu/94993376)

Scheffé, H. (1959). *The Analysis of Variance*. New York: Wiley. [https://psycnet.apa.org/record/1961-00074-000](https://psycnet.apa.org/record/1961-00074-000)

Schneider, I. (2005a). Chapter 6 - Jakob Bernoulli, Ars conjectandi (1713). In *Landmark Writings in Western Mathematics 1640-1940*, edited by Grattan-Guinness, I., Cooke, R., Corry, L., Crépel, P., & Guicciardini, N., 88–104. Amsterdam: Elsevier Science. [https://doi.org/10.1016/B978-044450871-3/50087-5](https://doi.org/10.1016/B978-044450871-3/50087-5)

———. (2005b). Chapter 7 -Abraham De Moivre, The Doctrine of Chances (1718, 1738, 1756). In *Landmark Writings in Western Mathematics 1640-1940*, edited by Grattan-Guinness, I., Cooke, R., Corry, L., Crépel, P., & Guicciardini, N., 105–20. Amsterdam: Elsevier Science. [https://doi.org/10.1016/B978-044450871-3/50087-5](https://doi.org/10.1016/B978-044450871-3/50087-5)

Schrader, D. V. (1962). The Newton-Leibniz Controversy Concerning the Discovery of the Calculus. *The Mathematics Teacher 55* (5): 385–96. [http://www.jstor.org/stable/27956626](http://www.jstor.org/stable/27956626)

Schrausser, D. G. (1996). *Permutationstests: Theoretische und praktische Arbeitsweise von Permutationsverfahren beim unverbundenen 2 Stichprobenproblem*. Universität Graz: Naturwissenschaftliche Fakultät. [https://doi.org/10.13140/RG.2.2.24500.32640/1](https://doi.org/10.13140/RG.2.2.24500.32640/1)

———. (1997). Exakte Verfahren oder Asymptotische Approximation? In *3. Tagung der österreichischen Gesellschaft für Psychologie (ÖGP)*. Salzburg, Österreich: Universität Salzburg. [https://doi.org/10.13140/RG.2.2.14805.91369](https://doi.org/10.13140/RG.2.2.14805.91369)

———. (1998a). Die Permutationsmethode: Voraussetzungsfrei testen. In *41. Kongreß der Deutschen Gesellschaft für Psychologie*. Dresden, Deutschland: Technische Universität Dresden. [https://doi.org/10.13140/RG.2.2.19532.69768](https://doi.org/10.13140/RG.2.2.19532.69768)

———. (1998b). Exakte Verfahren oder Asymptotische Approximation? In *Perspektiven Psychologischer Forschung in Österreich*, edited by Glück, J., Jirasco, M., & Rollett, B. Vol. 2. WUV-Univ.-Verl., Wien. [https://doi.org/10.5281/zenodo.11673333](https://doi.org/10.5281/zenodo.11673333)

———. (2022a). Mathematical-Statistical Algorithm Interpreter, SCHRAUSSER-MAT: Function Index, Manual. *Handbooks. Academia*. [https://www.academia.edu/81395688](https://www.academia.edu/81395688)

———. (2022b). Thesis chapter 1: Introduction. *Thesis Chapters. Academia*. [https://www.academia.edu/82224369](https://www.academia.edu/82224369)

———. (2023a). *Schrausser/ConsoleApp_DistributionFunctions: Console applicationes for distribution functions* (version v1.0.0). Zenodo. [https://doi.org/10.5281/zenodo.7664141](https://doi.org/10.5281/zenodo.7664141)

———. (2023b). *Schrausser/ConsoleApp_Integral: Console applications for integral and interpolation* (version v1.0.0). Zenodo. [https://doi.org/10.5281/zenodo.7655056](https://doi.org/10.5281/zenodo.7655056)

———. (2023c). *Schrausser/FunktionWin: Windows Interface for distribution functions* (version v1.0.0). Zenodo. [https://doi.org/10.5281/zenodo.7651660](https://doi.org/10.5281/zenodo.7651660)

———. (2023d). *Schrausser/PCE500_MATH: Mathematical and statistical applications for SHARP PC-E500* (version v1.0.0). Zenodo. [https://doi.org/10.5281/zenodo.7664088](https://doi.org/10.5281/zenodo.7664088)

———. (2024a). *Handbook: Distribution Functions (Verteilungs Funktionen)*. PsyArXiv. [https://doi.org/10.5281/zenodo.10969144](https://doi.org/10.5281/zenodo.10969144)

———. (2024b). Ptolemy’s Table of Chords: Implications Considered and Discussed. *Zenodo. May 2024*.
[https://doi.org/10.5281/zenodo.11356370](https://doi.org/10.5281/zenodo.11356370)

———. (2024c). *Schrausser/Abh_wkt: 1.5* (version v1.5.0). Zenodo. [https://doi.org/10.5281/zenodo.14183565](https://doi.org/10.5281/zenodo.14183565)

———. (2024d). *Schrausser/Various_programs: 3.5* (version v3.5.2). Zenodo. [https://doi.org/10.5281/zenodo.14280500](https://doi.org/10.5281/zenodo.14280500)

———. (2025). Schrausser/HP_Prime_MATH: 1.5. *Zenodo. January 2025*. [https://doi.org/10.5281/zenodo.14721085](https://doi.org/10.5281/zenodo.14721085)

Siegel, I. H. (1942). Index-Number Differences: Geometric Means. *Journal of the American Statistical Association 37* (218): 271–74. [https://doi.org/10.1080/01621459.1942.10500636](https://doi.org/10.1080/01621459.1942.10500636)

Snedecor, G. W. (1934). *Calculation and Interpretation of Analysis of Variance and Covariance*. Ames, Iowa: Collegiate Press. [https://doi.org/10.1037/13308-000](https://doi.org/10.1037/13308-000)

Sobot, R. (2021). Exponential and Logarithmic Functions. In *Engineering Mathematics by Example*, 51–66. Cham: Springer International Publishing. [https://doi.org/10.1007/978-3-030-79545-0_4](https://doi.org/10.1007/978-3-030-79545-0_4)

Solomon, S. L. (1982). Simstat a Simple Statistical Package to Support Simulation. In *Proceedings of the 14th Conference on Winter Simulation* - Volume 1, 307–11. WSC ’82. San Diego, California: Winter Simulation Conference. [https://doi.org/10.5555/1035853.1035900](https://doi.org/10.5555/1035853.1035900)

Somers, R. H. (1962). A New Asymmetric Measure of Association for Ordinal Variables. *American Sociological Review 27* (6): 799–811. [http://www.jstor.org/stable/2090408](http://www.jstor.org/stable/2090408)

Spearman, C. (1904). The Proof and Measurement of Association Between Two Things. *The American Journal of Psychology 15* (1): 72–101. [http://www.jstor.org/stable/1412159](http://www.jstor.org/stable/1412159)

Stigler, S. M. (1986). *The history of statistics: the measurement of uncertainty before 1900*. Cambridge, MA: Belknap Press of Harvard University Press. [https://www.scirp.org/(S(351jmbntvnsjt1aadkposzje))/reference/ReferencesPapers.aspx?ReferenceID=1973131](https://www.scirp.org/(S(351jmbntvnsjt1aadkposzje))/reference/ReferencesPapers.aspx?ReferenceID=1973131)

———. (2018). Richard Price, the First Bayesian. *Statistical Science 33* (1): 117–25. [https://www.jstor.org/stable/26770983](https://www.jstor.org/stable/26770983)

Suter, H. (1887). *Die Mathematik auf den Universitäten des Mittelalters*. Zürich: Druck von Zürcher und Furrer. [https://doi.org/10.3931/e-rara-65095](https://doi.org/10.3931/e-rara-65095)

Sylvester, J. J. (1904). *The Collected Mathematical Papers of James Joseph Sylvester*. Edited by Baker, H. F. Vol. 1. Cambridge: University Press. [https://archive.org/details/collectedmathem01sylvrich/page/n7/mode/1up](https://archive.org/details/collectedmathem01sylvrich/page/n7/mode/1up)

———. (1908). *The Collected Mathematical Papers of James Joseph Sylvester*. Edited by Baker, H. F. Vol. 2. Cambridge: University Press. [https://archive.org/details/SylvesterCollected2/page/n3/mode/1up](https://archive.org/details/SylvesterCollected2/page/n3/mode/1up)

———. (1909). *The Collected Mathematical Papers of James Joseph Sylvester*. Edited by Baker, H. F. Vol. 3. Cambridge: University Press. [https://archive.org/details/TheCollectedMathematicalPapersOfJamesJosephSylvesterVolumeIii/page/n3/mode/1up](https://archive.org/details/TheCollectedMathematicalPapersOfJamesJosephSylvesterVolumeIii/page/n3/mode/1up)

———. (1912). *The Collected Mathematical Papers of James Joseph Sylvester*. Edited by Baker, H. F. Vol. 4. Cambridge: University Press. [https://archive.org/details/collectedmathema04sylvuoft/page/n8/mode/1up](https://archive.org/details/collectedmathema04sylvuoft/page/n8/mode/1up)

Tate, R. F. (1955). The Theory of Correlation Between Two Continuous Variables When One Is Dichotomized. *Biometrika 42* (1/2): 205–16. [http://www.jstor.org/stable/2333437](http://www.jstor.org/stable/2333437)

Taylor, B. (1715). *Methodus incrementorum directa & inversa*. Auctore Brook Taylor, LL. D. & Regiae Societatis Secretario. Londini: Typis Pearsonianis: Prostant apud Gul. Innys ad Insignia Principis in Coemeterio Paulino MDCCXV. [https://books.google.com/books?id=iXN1xgEACAAJ](https://books.google.com/books?id=iXN1xgEACAAJ)

———. (1717). *Methodus incrementorum directa & inversa*. Auctore Brook Taylor, LL. D. & Regiae Societatis Secretario. Londini: Impensis Gulielmi Innys ad Insignia Principis in Coemetrio D. Pauli. MDCCXVII. [https://books.google.com/books?id=r-Gq9YyZYXYC](https://books.google.com/books?id=r-Gq9YyZYXYC)

Thurstone, L. L. (1931). Multiple Factor Analysis. *Psychological Review 38* (5): 406–27. [https://doi.org/10.1037/h0069792](https://doi.org/10.1037/h0069792)

———. (1934). The Vectors of Mind. *Psychological Review 41*: 1–32. [https://doi.org/10.1037/h0075959](https://doi.org/10.1037/h0075959)

———. (1935). *The Vectors of Mind. Multiple-Factor Analysis for the Isolation of Primary Traits*. Chicago, Illinois: University of Chicago Press. [https://archive.org/details/vectorsofmindmul010122mbp/page/n7/mode/1up](https://archive.org/details/vectorsofmindmul010122mbp/page/n7/mode/1up)

van Evra, J. (1997). Antoine Arnauld and Pierre Nicole, Logic or the Art of Thinking. *Philosophy in Review 17* (3): 153–55. [https://philpapers.org/rec/VANAAA-13](https://philpapers.org/rec/VANAAA-13)

Vince, J. (2021). The Complex Plane. In *Quaternions for Computer Graphics*, 55–70. London: Springer. [https://doi.org/10.1007/978-1-4471-7509-4_4](https://doi.org/10.1007/978-1-4471-7509-4_4)

Walter, W. (1982). Old and New Approaches to Euler’s Trigonometric Expansions. *The American Mathematical Monthly 89* (4): 225–30. [http://www.jstor.org/stable/2320218](http://www.jstor.org/stable/2320218)

Weierstraß, K. (1894). *Mathematische Werke*. Vol. 1. Berlin: Mayer & Müller. [https://quod.lib.umich.edu/u/umhistmath/AAN8481.0001.001](https://quod.lib.umich.edu/u/umhistmath/AAN8481.0001.001)

Whish, C. M. (1834). XXXIII. On the Hindú Quadrature of the Circle, and the infinite Series of the proportion of the circumference to the diameter exhibited in the four S’ástras, the Tantra Sangraham, Yucti Bháshá, Carana Padhati, and Sadratnamála. *Transactions of the Royal Asiatic Society of Great Britain and Ireland 3* (3): 509–23. [https://doi.org/10.1017/S0950473700001221](https://doi.org/10.1017/S0950473700001221)

Wirtinger, W. (1927). Zur formalen Theorie der Funktionen von mehr komplexen Veränderlichen. *Mathematische Annalen 97*: 357–74. [https://doi.org/10.1007/BF01447872](https://doi.org/10.1007/BF01447872)

Wooff, D., & Peladeau, N. (1994). Simstat: Simulation and Statistics for Ibm Personal Computers or Compatibles, Version 2.0. *Journal of the Royal Statistical Society Series C 43* (2): 417–22. [https://doi.org/10.2307/2986032](https://doi.org/10.2307/2986032)

Yates, F. (1934). Contingency Tables Involving Small Numbers and the $\chi^2$ Test. *Supplement to the Journal of the Royal Statistical Society 1* (2): 217–35. [http://www.jstor.org/stable/2983604](http://www.jstor.org/stable/2983604)

Yule, G. U. (1912). On the Methods of Measuring Association Between Two Attributes. *Journal of the Royal Statistical Society 75* (6): 579–652. [http://www.jstor.org/stable/2340126](http://www.jstor.org/stable/2340126) 
