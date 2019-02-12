#' 
#' __Checking binomial and multinomial frequencies__
#'
#' If you observe 60 men and 40 women
#' and the proportion should be 50/50
#' use:
#' 
chisq.test(c(60,40), p = c(.5,.5))
#'
#' Use the p-value as a measure of 'surprise'
#' 
#' If you have more than two groups:
#' e.g. white, black, other,
#' and you have 40, 20, 40, respectively
#' and expect a proportion of .6, .15, .25,
#' respectively, use:
#' 
z <- chisq.test(c(40,20,40), p = c(.6,.15,.25))
z
#' The p-value is measure of 'overall suprise'.
#' To check check each group, use the
#' Pearson Residuals in the list of 
#' residuals below:
#' 
unclass(z) 
#'
#' If a residual is greater than 2 in absolute
#' value, that corresponds roughly to a
#' '0.05 surprise'.
#' 
#' A link: [multinomial goodness of fit](http://www.r-tutor.com/elementary-statistics/goodness-fit/multinomial-goodness-fit)
#' 
