---
title       : Analyzing Admissions at UCB
subtitle    : Course Project for Developing Data Products
author      : Kumaran
job         : Learner
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

## Introduction

- Course Project for Developing Data Products Course
- Uses UCBAdmissions dataset
- Gets Input - Gender and Admission Status
- Computes Mean and Standard Deviation
- Displays results and Piechart

--- .class #id 

## DataSet
- Standard R dataset - UCBAdmissions


```r
library(datasets)
data(UCBAdmissions)
admissions <- as.data.frame(UCBAdmissions)
summary(admissions)
```

```
##       Admit       Gender   Dept       Freq    
##  Admitted:12   Male  :12   A:4   Min.   :  8  
##  Rejected:12   Female:12   B:4   1st Qu.: 80  
##                            C:4   Median :170  
##                            D:4   Mean   :189  
##                            E:4   3rd Qu.:302  
##                            F:4   Max.   :512
```

--- .class #id 

## Input 
- Takes two Inputs - Admission Status and Gender
- Implemented as Radio boxes


```r
# Sample code snippet

# radioButtons('Gender','Gender : ', c('Male' = 'Male', 'Female' = 'Female')
# ), br(),

# radioButtons('Admit','Admission Status : ', c('Admitted' = 'Admitted',
# 'Rejected' = 'Rejected') ),
```


--- .class #id 
## Computations

- Filter dataset based on selected filters
- Compute mean
- Compute SD
- Output the results and the Pie Chart


```r
# Sample code snippet (show only, not execute)

# mean1 <- mean(admissions[admissions$Admit == input$Admit &
# admissions$Gender==input$Gender,4])

# sd1 <- sd(admissions[admissions$Admit == input$Admit &
# admissions$Gender==input$Gender,4])
```


--- .class #id 

