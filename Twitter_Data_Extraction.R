#Author-Aishwarya Suresh
#Date- 5-15-2022
#Version R 3.6.3

#Guide for installation
#install.packages("academictwitteR")

#References:
#Twitter access setup-> github/cjbarrie
#https://medium.com/@traffordDataLab/exploring-tweets-in-r-54f6011a193d
#https://medium.com/mindninja/sentiment-analysis-on-twitter-data-with-r-e93769feb8c4
#https://rstudio-pubs-static.s3.amazonaws.com/66739_c4422a1761bd4ee0b0bb8821d7780e12.html

#Setting up environment
library(academictwitteR)
library(plyr)
library(rtweet)
library(dplyr)
library(tidyr)
library(tidytext)
library(textdata)
require(httr)
require(jsonlite)
library(wordcloud)
library(RColorBrewer)
library(igraph)
library(ggraph)
require(tidygraph)
library(SnowballC)
library(tm)
library(glue)
library(stringr)


#set_bearer()   - to set up authorization credentials in .Renviron file

#Tweet extraction(data collection)
general_tweets <-
  get_all_tweets(
    query = c("supply forced labour","supply modern slavery",
              "supply child labour",
              "supply forced labor",
              "supply child labor",
              "supplier forced labour","supplier modern slavery",
              "supplier child labour",
              "supplier forced labor",
              "supplier child labor"),
    start_tweets = "2021-01-01T00:00:00Z",
    end_tweets = "2021-01-31T00:00:00Z",
    file = "Supply-Supplier-ForcedLaborTweets",
    data_path = "data_human_rights_jan_2022/",
    n = 1000000,
    lang = "en"
  )

#Converting bulk json files to tidy format
data_path = "C:/Users/krish/Documents/ISE 244/Twitter-Data-2020-2021/"
general_tweets <- bind_tweets(data_path, user = FALSE, verbose = TRUE, output_format = NA)

data_tweets <- as_tibble(general_tweets)

save_data <- data_tweets[['text', 'created_at','id']]
write.csv(save_data,'complete_twitter.csv')