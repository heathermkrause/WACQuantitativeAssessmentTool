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
#the user labels each key identity variable with data type - numeric (age), factor (gender, ethnicity), string (language)

#The user puts the expected population proportions for each key identity variables into the form associated with each identity variable

#The user is asked whether there is a treatment/control variable. If so the user put the name of that variable into the form and tells which column it is located in

#The algorithm assesses the balance of representation in each of the identity variables relative to population variable

#The algorithm assesses the balance of the treatment/control in each of the identity variables

#The algorithm assess whether there is much more missing data associated outcome variable and one of the key identity variables

#null hypothesis of prop = known proportion
t.test 



#calculate proportion for each class
# load the libraries
library(mlbench)
# load the dataset
data(PimaIndiansDiabetes)
# distribution of class variable
y <- PimaIndiansDiabetes$diabetes
cbind(freq=table(y), percentage=prop.table(table(y))*100)

# calculate skewness for each variable
skew <- apply(PimaIndiansDiabetes[,1:8], 2, skewness)
#The further the distribution of the skew value from zero, the larger the skew to the left (negative skew value) or right (positive skew value)

prop.test

prop.test(x, n, p = NULL,
          alternative = c("two.sided", "less", "greater"),
          conf.level = 0.95, correct = TRUE)

smokers  <- c( 83, 90, 129, 70 )
patients <- c( 86, 93, 136, 82 )
prop.test(smokers, patients)

heads <- rbinom(1, size = 100, prob = .5)
prop.test(heads, 100)          # continuity correction TRUE by default
prop.test(heads, 100, correct = FALSE)

sample <- c()

sexsmoke<-matrix(c(70,120,65,140),ncol=2,byrow=T)
rownames(sexsmoke)<-c("male","female")
colnames(sexsmoke)<-c("population","sample")
prop.test(sexsmoke)


sample: ethnicity - 3 groups - 100 total - group 1 = 10, group 2 = 40, group 3 = 50
population ethnicity - group 1 20%, group 2 20% group 3 60%

prop.text()
