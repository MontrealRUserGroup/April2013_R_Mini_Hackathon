#Load and install RCurl
if(!require(RCurl)){install.packages("RCurl")
                    require(RCurl)}
if(!require(XML)){install.packages("XML")
                    require(XML)}

#Store link to xml file
data.link <- getURL("https://raw.github.com/MontrealRUserGroup/April2013_R_Mini_Hackathon/master/StackOverflow_data_dump/StackOverflow_data/badges.xml")

#Parse the xml tree (not yet working)
stack.data <- xmlTreeParse(file=data.link,
                                   asText=T,
                           useInternalNodes = TRUE)

root.stack.data <- xmlRoot(stack.data)