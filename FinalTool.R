#Final tool WAC - Quantitative Analysis
#Note: currently this only works with categorical identity variables - like gender, sex, ethnicity, income level, geography. It doesn't yet work with continuous variables like income on a continuous scale or height on a continuous scale

#Step 1: UX: User is asked to upload their data file as either csv or Excel
#Step 1a: The webtool needs to ingest this dataset as a csv called "dd"
#Step 2: UX: User is asked to define their key identity variables within the dataset. Maximum of 10
#Step 3: These variables must be in the first 10 columns of the csv of Excel dataset
#Step 3a: UX: "What is the name of the key identity variable in the first column?  (For example, gender or ethnicity)
#Step 3b: UX: "What are the codes for the different levels of your key identity variable (for example, for key identity variable #1 is gender where 1 = male and 2 - female)
#Step 3c: UX: The UX then needs to show each of these levels and ask the user to enter the proportion of this subgroup in the population (or the target proption)
#Step 4: The webtool then needs to ingest these target proportions as a vector saved as "keyvar1pr"
#Step 5: Repeat steps 3 and 4 for each of the key identity variables (up to 10)


dd <- #Insert path from webtool here to get dataset

dd<- read.csv("/Users/heatherkrause/Dropbox/R/WACQuantitativeAssessmentTool/Example data.csv",na.strings=c(""," ","98","99","NA"))
  
dd$KeyVar1 <- 