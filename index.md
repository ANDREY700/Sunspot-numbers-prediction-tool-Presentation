---
title       : Sun activities prediction
subtitle    : Developing Data Product, Course Project
author      : Andrey ABRAMOV
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Idea of sunspot numbers prediction


The idea of computing sunspot numbers was originated by Rudolf Wolf in 1848[1] in Zurich, Switzerland and, thus, the procedure he initiated bears his name (or place). The combination of sunspots and their grouping is used because it compensates for variations in observing small sunspots.
The relative sunspot number R is computed using the formula (collected as a daily index of sunspot activity):

R=k(10g+s),

where

s is the number of individual spots,

g is the number of sunspot groups, and

k is a factor that varies with location and instrumentation (also known as the observatory factor or the personal reduction coefficient K).



---

## Sun activities prediction

 - solar activity is predicted by analyzing recent and real-time solar data, acquired by space-based and ground–based instruments. The actual forecast process is very similar to the more familiar terrestrial weather prediction activities: taking data, ingesting the data into models, and then, after analysis and scrutiny by forecasters, formulating the actual predictions.
 - in my Project I will use two different data set and parameters set up for model calculation.
 - this project is not supposed to estimate the quality of a model or comparison of models quality based on different initial data


---

## How to use it?

Follow for next steps:
 - 1. choose the initil data set at the left panel
 - 2. choose the three initial parameters for new model: autoregressive, differencing and moving-average factors

At the notebook pages you will find the prediction result for the sunspot numbers based on choosed parameters.

---

## Thank you!

```r
  publish(title = 'Sunspot prediction tool', 'index.html', host = 'rpubs')
```

---

