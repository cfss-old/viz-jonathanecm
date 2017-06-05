library(tidyverse)
library(stringr)

# Variable definitions. 
files_path <- list.files("./data/tweets", full.names = TRUE)
tweet_type <- str_extract(list.files("./data/tweets"), "[a-z]+")

all_tweets <- data.frame(id = integer(),
                     screenName = character(), 
                     text = character(), 
                     created = character(), 
                     isRetweet = logical(), 
                     retweetCount = integer(),
                     type = character(),
                     stringsAsFactors = FALSE)

# Cleaning data.
for (i in 1:length(files_path)) {
       all_tweets <- read.csv(files_path[i], stringsAsFactors = FALSE) %>%
              select(id, screenName, text, created, isRetweet, retweetCount) %>%
              filter(isRetweet == FALSE) %>%
              mutate(type = tweet_type[i]) %>%
              union(all_tweets, all_tweets) 
}

# Saving data. 
write_csv(all_tweets, "./data/tidy_tweets/all_tweets.csv")


