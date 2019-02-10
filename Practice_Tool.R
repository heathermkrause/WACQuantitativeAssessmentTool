library("cobalt")

data("lalonde", package = "cobalt") #If not yet loaded
covs0 <- subset(lalonde, select = -c(treat, re78, nodegree, married))

# Generating ATT weights as specified in Austin (2011)
lalonde$p.score <- glm(f.build("treat", covs0), data = lalonde, 
                       family = "binomial")$fitted.values
lalonde$att.weights <- with(lalonde, treat + (1-treat)*p.score/(1-p.score))

bal.tab(covs0, treat = lalonde$treat, weights = lalonde$att.weights,
        method = "weighting")