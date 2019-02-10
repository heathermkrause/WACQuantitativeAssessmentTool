library("cobalt")

data("lalonde", package = "cobalt") #If not yet loaded
covs0 <- subset(lalonde, select = -c(treat, re78, nodegree, married))

# Generating ATT weights as specified in Austin (2011)
lalonde$p.score <- glm(f.build("treat", covs0), data = lalonde, 
                       family = "binomial")$fitted.values
lalonde$att.weights <- with(lalonde, treat + (1-treat)*p.score/(1-p.score))

bal.tab(covs0, treat = lalonde$treat, weights = lalonde$att.weights,
        method = "weighting")

#Import the dataframe

#The user puts the name of the variable into the form associated with each column

#The user is asked whether there is a treatment/control variable. If so the user put the name of that variable into the form and tells which column it is located in

#The algorithm assesses the balance