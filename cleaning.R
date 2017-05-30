library(tidytext)
library(stringr)
library(knitr)
library(readr)
library(tidyverse)

# Reading files. 
set_one <- as.tibble(read_csv("./data/change_twits.csv")) %>%
       select(id, screenName, text, created, isRetweet, retweetCount) %>% 
       filter(isRetweet == FALSE) %>%
       mutate(type = "change") 

set_two <- as.tibble(read_csv("./data/transition_twits.csv")) %>%
       select(id, screenName, text, created, isRetweet, retweetCount) %>%
       filter(isRetweet == FALSE) %>%
       mutate(type = "transition")

set_three <- as.tibble(read_csv("./data/government_twits.csv")) %>%
       select(id, screenName, text, created, isRetweet, retweetCount) %>%
       filter(isRetweet == FALSE) %>%
       mutate(type = "goverment")

set_one_two <- bind_rows(set_one, set_two)
all_tweets <- bind_rows(set_one_two, set_three) %>%
       write_csv("./data/all_tweets.csv")








