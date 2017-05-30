# Down load files

# # library(curl)
# library(geonames)
library(tidyverse)
library(twitteR)
# library(rvest)
# library(stringr)
# library(jsonlite)
# library(httr)

# Authorizing your app to access your Twitter account
setup_twitter_oauth(consumer_key = getOption("twitter_api_key"),
                    consumer_secret = getOption("twitter_api_token"))

# Getting twits
searchTwitter("venezuela gobierno", 
                        n = 15000, 
                        lang = "es",
                        since = "2017-05-20", 
                        until = "2017-05-28") %>% 
              twListToDF() %>%
              write_csv("./data/government_twits.csv") 







