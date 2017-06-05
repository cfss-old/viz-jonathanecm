# Cleans existing files and directories and creates new directores.
paths <- c("./data/tidy_tweets")

for (path in paths) {
    unlink(path, recursive = TRUE)
    dir.create(path)
}

source("./scripts/01_clean_data.R")