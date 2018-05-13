library(tidyverse)
library(readxl)

path <- "C:/Users/Bryce/Desktop/Github_Projects/tidytuesday/tt6_coffee.xlsx"

starbucks <- 
  read_excel(path) %>%
  rename(Chain = Brand)

thortons <- 
  read_excel(path, sheet = "timhorton") 

thortons$Chain <- "Tim Hortons"  # Really wanted to use a regex inside of separate to split store_name column by the second space

dunkin <- 
  read_excel(path, sheet = "dunkin") %>%
  rename(Chain = biz_name)









