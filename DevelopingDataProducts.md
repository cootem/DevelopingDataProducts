Developing Data Products - Course Project
========================================================
author: Michael Coote
date: 2/2/2019
autosize: true
font-family: 'Book Antiqua'

Developing Data Products
========================================================

I have deployed a Shiny Application at 
<https://cootem.shinyapps.io/DevelopingDataProducts/>.

- Prediction of a childs height based on the height of their parents
- Uses the Galton dataset
- Modelled using linear regression

The Data Model
========================================================
A linear model fit to the sample dataset

![plot of chunk unnamed-chunk-1](DevelopingDataProducts-figure/unnamed-chunk-1-1.png)

Accuracy
========================================================
Linear Model Summary


```
lm(formula = child ~ parent, data = galton)
```

```
              Estimate Std. Error   t value     Pr(>|t|)
(Intercept) 23.9415302 2.81087834  8.517455 6.536845e-17
parent       0.6462906 0.04113588 15.711115 1.732509e-49
```

The model loosly estimates the heights, 
r squared = 0.2105

Future Work
========================================================

This should layout a clear path forward for further development on the
child height predictor model.

Future work we hope you will fund
- Broaden the sample dataset
- Estimator for handling male and female heights
- Automatic conversion to feet and inches, or other units

Thank you
