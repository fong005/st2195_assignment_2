library("rvest")
library("tidyverse")
library("dplyr")
wiki = "https://en.wikipedia.org/wiki/Comma-separated_values" %>%
  read_html() %>%
  html_nodes(xpath='//*[@id="mw-content-text"]/div[1]/table[2]') %>%
  html_table()
wiki
write.csv(wiki,"Desktop/ST2195_A2/r_csv/wikitable.csv", row.names = FALSE)
wikitable = read.csv("Desktop/ST2195_A2/r_csv/wikitable.csv")
view(wikitable)