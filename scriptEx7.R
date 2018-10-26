rm(list = ls())  # clears global environment

setwd("~/Biocomp-Fall2018-181012-Exercise7")  # sets working directory to exercise file


# QUESTION 1

sample_df = data.frame("Rank" = 1:5, "Friend" = c("Mario","Luigi","Peach","Toad","Bowser"), stringsAsFactors = FALSE)  # creates a sample dataframe to test function

oddRows <- function(df) {  # creates a new function oddRows using inputted df
  extractedVals <- df[seq(1,nrow(df),2), ]  # puts odd row data into variable extractedVals
  return(extractedVals)  # outputs extractedVals
}

oddRows(sample_df)  # tests out sample_df


# QUESTION 2.1

iris <- read.csv("iris.csv")  # reads and stores iris.csv dataset

speciesCount <- function(rawData, speciesName){  # creates function that takes dataframe argument rawData and string argument speciesName
  howMany = nrow(rawData[rawData$Species == speciesName, ])  # creates variable howMany that stores how many of given species is observed
  return(howMany)  # returns howMany variable
}

speciesCount(iris,"virginica")  # tests function using the iris dataset and the "virginica" species


# QUESTION 2.2

greaterSepalWidth <- function(rawData, value) {  # creates a function greaterSepalWidth that takes two arguments, iris dataset and greater than value
  sepalPicker <- rawData[rawData$Sepal.Width > value, ]  # stores sepal widths greater than user value
  bestSepals <<- data.frame(sepalPicker)  # puts stored values into a data frame in the global environment
  return(bestSepals)  # returns data frame
}

greaterSepalWidth(iris, 4)  # test function for sepal widths greater than 4 in iris dataset


# QUESTION 2.3

speciesStorage <- function(rawData, speciesName) {  # creates function that takes iris dataset and speciesName arguments
  theseOnes <- rawData[rawData$Species == speciesName, ]  # stores observations for specific species
  return(write.csv(theseOnes, file = paste(speciesName, "csv", sep = ".")))  # returns a write.csv that creates a csv for specific species
}

speciesStorage(iris,"versicolor")  # tests function for species "versicolor"