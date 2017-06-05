#### Script for downloading the tweets #######################################
# 
# This script call the Twiter API and can be modified for download tween with 
# different searching features, parameters, and dates to download tweets.
#
# Searching parameters: 
# - venezuela cambio
# - venezuela gobierno
# - venezuela politica
# - venezuela trancision 
##############################################################################

# Libraries
library(tidyverse)
library(twitteR) 


# Authorizing your app to access your Twitter account 
setup_twitter_oauth(consumer_key = getOption("twitter_api_key"),
                    consumer_secret = getOption("twitter_api_token"))

# Searching for tweets.
searchTwitter("venezuela politica",
                        n = 15000, 
                        lang = "es",
                        since = "2017-05-20", 
                        until = "2017-05-31") %>%
              twListToDF() %>% 
       write_csv("./data/used/politica_twits_0531.csv") 




