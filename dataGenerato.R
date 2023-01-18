#dataGenerato.R
#20179048_A1

library(ggplot2)

#for reproductability. 
set.seed(01111)

#generating a vector with 5 different species names, and creating our random species column.

SpeciesNames <- c("Elephantodono", "Catus", "Camelus", "Panthera", "Giraffa")
Organism <- sample(SpeciesNames, 100, replace = TRUE)
print(Organism)

#creating our randomized limb width values, with values between 1-25cm rounded to 1 decimal place. Including Visualizations.

LimbWidth <- round(runif(n=100, min=1, max=25), 1)
RandomLimbWidth <- sample(LimbWidth, 100)
print (RandomLimbWidth)
ggplot() + geom_point(aes(y=RandomLimbWidth, x=1:100))

#creating our randomized limb length values, with values between 1-75cm rounded to 1 decimal place. Including Visualizations.

LimbLength <- round(runif(n=100, min=1, max=75), 1)
RandomLimbLength <- sample(LimbLength, 100)
print (RandomLimbLength)
ggplot() + geom_point(aes(y=RandomLimbLength, x=1:100))

#creating a vector with 3 different observer names, and sampling 100 randomized rows with those names.

ObserverNames <- c("Mary", "Joe", "Daniel")
Observers <- sample(ObserverNames, 100, replace = TRUE)

#Compiling our 4 unique vectors into a singular data frame. To be exported to csv.

measurements <- data.frame(Organism, RandomLimbLength, RandomLimbWidth, Observers)
print(measurements)
