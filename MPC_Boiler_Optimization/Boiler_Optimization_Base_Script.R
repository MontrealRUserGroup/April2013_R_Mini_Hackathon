#Load and install RCurl
if(!require(RCurl)){install.packages("RCurl")
                   require(RCurl)}

#Store link to csv file
data.link <- getURL("https://raw.github.com/MontrealRUserGroup/April2013_R_Mini_Hackathon/master/MPC_Boiler_Optimization/Boiler_Optimization_Data.csv")

#Load csv file
boiler.data <- read.csv(text = data.link)

#Reformat date
boiler.data$Date <- as.Date(boiler.data$Date, "%Y-%m-%d %H:%M")