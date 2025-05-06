## Standard Probability Distribution Functions and their supports

### 1. Normal Distribution $x \in (-\infty,\infty)$
$\mathcal{N}(\mu,\sigma^2)$, $\mu \in \mathbb{R}$,$\sigma^2 \in \mathbb{R}_{>0}$

$$ f(x) = \frac{1}{\sqrt{2\pi\sigma^2}} e^{-\frac{(x-\mu)^2}{2\sigma^2}}$$

### 2. Binomial Distribution (Discrete) $x \in \{0,1,2,...,n\}$-number of successes 
$B(n,p)$, $n \in {0,1,2,...}$,  $p \in [0,1]$ 

$$ f(x) = \binom{n}{k}p^x (1-p)^{n-x}$$

### 3. Poisson Distribution (Discrete) $x \in \mathbb{N}_0$ (natural numbers and zero)
$Pois(\lambda)$, $\lambda \in (0,\infty)$

$$ f(x) = \frac{\lambda^xe^{-\lambda}}{x!}$$

### 4. Gamma Distribution $x \in [0, \infty)$ 
$Gamma(\alpha,\theta)$ or $Gamma(\alpha,\lambda)$; $\alpha>0$ (shape), $\theta>0$ (scale), $\lambda>0$ (rate)

$$ f(x) = \frac{1}{\Gamma(\alpha) \theta^{\alpha}} x^{\alpha-1} e^{\frac{-x}{\theta}}$$

or

$$ f(x) = \frac{\lambda^{\alpha}}{\Gamma(\alpha)} x^{\alpha-1} e^{-\lambda x}$$

### 5. Uniform Distribution (continuous) $x \in [a,b]$
$\mathcal{U}_{[a,b]}$, $-\infty<a<b<\infty$

$$f(x) = \begin{cases}  \frac{1}{b-a}, \,\, x \in [a,b] \\ 0, \,\, otherwise \end{cases} $$


