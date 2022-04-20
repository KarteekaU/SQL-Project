setwd('/Users/Adrija/Desktop/College/College Current Sem-Fall 2021/Structured Data Modeling and Analysis/Project/Datasets')


library(ggplot2)
library(dplyr)

student <- read.csv("Student.csv")
pet <- read.csv("Pets.csv")
pet$fullname<-paste(pet$ownerFirstName, pet$OwnerLastName, sep=" ")
student$fullname<-paste(student$FirstName, student$LastName, sep=" ")
df <- merge(x = pet, y = student, by = "fullname", all = TRUE)
df1 <- df[!is.na(df$petID),]
df1[is.na(df1)] <- 0
df1$studentID <- ifelse(df1$studentID %in% c(0), 'Professor', 'Student')
newdata <- subset(df1, select=c(petID, studentID))
ggp <- ggplot(newdata, aes(x = studentID)) +
  geom_bar()
number_ticks <- function(n) {function(limits) pretty(limits, n)}
ggp + scale_y_continuous(breaks=number_ticks(10))


newdata <- df %>%
  arrange(desc(cut)) %>%
  mutate(prop = round(counts*100/sum(counts), 1),
         lab.ypos = cumsum(prop) - 0.5*prop)
head(df, 4)