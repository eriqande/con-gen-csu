library(tidyverse)
library(glue)


# here are the GitHub Handles
GH <- c(
  "EllenMCampbell",
  "Rhayania",
  "abeulke",
  "bwavila",
  "ccolumbu",
  "ecnrobertson",
  "foxholden",
  "hmoyle",
  "isabelra1",
  "katstroh",
  "leezhimeimaria",
  "lilyd-csu",
  "marydixon",
  "mfantolin7",
  "mjhemmerlein",
  "noelmclark",
  "rbortner",
  "shanellewiks",
  "swrosenbaum",
  "wcfunk"
)


# here is a function to read something and return NULL if it can't
read_it <- function(x) {
  tryCatch(read_csv(x), error = function(e) NULL)
}

# here are the canonical paths:
first <- "https://raw.githubusercontent.com/"
leopard <- "/con-gen-csu/007-rock-the-vote/assignments/007-vote-for-topics/leopard-paper-topics.csv"
syllabus <- "/con-gen-csu/007-rock-the-vote/assignments/007-vote-for-topics/syllabus-topics.csv"


# now, get them all
votes_tib <- tibble(
  GH = GH
) %>%
  mutate(
    leopard = map(.x = GH, .f = function(x) read_it(paste(first, x, leopard, collapse = "", sep = ""))),
    syllabus = map(.x = GH, .f = function(x) read_it(paste(first, x, syllabus, collapse = "", sep = "")))
  )



leo_ranks <- votes_tib %>%
  select(GH, leopard) %>%
  unnest(leopard) %>%
  filter(rank > 0) %>%
  group_by(topic) %>%
  summarise(
    mean_rank = mean(rank),
    rank_str = paste(sort(rank), sep = "", collapse = ",")
  ) %>%
  arrange(mean_rank)


leo_ranks

write_csv(leo_ranks, file = "instructor/leopard-ranks.csv")

syl_ranks <- votes_tib %>%
  select(GH, syllabus) %>%
  unnest(syllabus) %>%
  filter(rank > 0) %>%
  group_by(topic) %>%
  summarise(
    mean_rank = mean(rank),
    rank_str = paste(sort(rank), sep = "", collapse = ",")
  ) %>%
  arrange(mean_rank)


syl_ranks

write_csv(syl_ranks, file = "instructor/syllabus-ranks.csv")

votes_tib
