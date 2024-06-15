install.packages("tidyverse")
library(tidyverse)
Election_24 <- read_csv("C:/Users/ajink/Downloads/election_results_24.csv")
library(ggplot2)
head(Election_24)
library(scales)
summary(Election_24)
View(Election_24)
ggplot(data = Election_24,aes(y=`Leading Party`,x=Margin))+
  geom_bar(stat = "identity")

Total_Seats <- length(unique(Election_24$Constituency))
Total_Seats






ggplot(data = Election_24, aes(x = `Leading Party`, y = 'Total_Seats',fill = `Leading Party`)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("Indian National Congress" = "blue", "Bharatiya Janata Party" = "red", "Samajwadi Party" = "green"))+
 coord_flip()+xlab("Leading Party") +ylab("Total Win Seats")









