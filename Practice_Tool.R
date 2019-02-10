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

#The user puts the name of the key identity variables into the form associated with each column

#The user puts the expected population proportions for each key identity variables into the form associated with each identity variable

#The user is asked whether there is a treatment/control variable. If so the user put the name of that variable into the form and tells which column it is located in

#The algorithm assesses the balance of representation in each of the identity variables

#The algorithm assesses the balance of the treatment/control in each of the identity variables

#The algorithm assess whether there is much more missing data associated outcome variable and one of the key identity variables