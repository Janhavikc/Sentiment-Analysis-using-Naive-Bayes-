# Sentiment analysis
library(syuzhet)
library(lubridate)
library(ggplot2)
library(scales)
library(reshape2)
library(dplyr)

# Read file
mytext<- read.csv(file.choose(), header = T)
text1<-iconv(mytext$Medical.Condition, to ="UTF-8")
# Obtain sentiment scores
text1[1]
s <- get_nrc_sentiment(text1)
head(s,1)
get_nrc_sentiment('delay')

# Bar plot
barplot(colSums(s),
        las = 2,
        col = rainbow(10),
        ylab = 'Count',
        main = 'Sentiment Scores for Medical Condition')
