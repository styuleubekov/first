install.packages('shiny') #insert required lib name
library(shiny)
remotes::install_github('braverock/quantstrat')

installedpacks = installed.packages()

par(mfrow=c(1,1))

rm(list=ls())

setwd('~/R')

options(scipen=999) # forces R not to use scientific notation with numbers (i.e. 1.15e-5)

Sys.setlocale('LC_ALL','English')

library(installr)
updateR()



train_test_split = function(data,test_size=0.2){
  split_vector = runif(dim(data)[1])
  train <- data[split_vector>test_size,]
  test <- data[split_vector<=test_size,]
  train_test = list(train,test)
  return(train_test)
}
