

PA-Rpres.Rpres
========================================================
  author: AS
date: 1/24/2015


First Slide
========================================================
This is a simple pitch for a simple APP using Shiny. 
The APP calculates the Normal Distribution and allows for estimation of p-value. P-value estimate can be based on Lower or Upper tail.
The user input is actually via a slider. The p-value is calculated and displayed.
 
- A sequence is generated from -10 to 10.
- Normal distribution is computed and plotted
- User makes a choice of lower or upper tail for computing a p-value.
- User inputs a value of normal distribution using a slider. 
- A corresponding slider line is shown on normal distribution
- A corresponding pnorm is computed and displayed.

 2nd Slide - Code
========================================================
  

```r
  x <- seq(-10,10,by = 0.01)
  y <- dnorm(x,mean=mean(x),sd=sd(x))
```
 3rd Slide - Plot
========================================================
 

```r
plot(x, y, type= "l", col="blue", lwd=4, ylab="Pr(X=x)")
lines(x, y, col="magenta",lwd=2)
```

![plot of chunk unnamed-chunk-2](PA-Rpres-figure/unnamed-chunk-2-1.png) 

4th Slide - p-Value
========================================================

For example with an input of 5, the p-value is 


```
[1] 0.9999997
```


5th Slide - Summary
========================================================
  So, this demonstrates r-programming in slides that R code can update the content of the slide.
