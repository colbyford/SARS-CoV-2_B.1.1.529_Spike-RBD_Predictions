library(tidyverse)
library(seqinr)
library(GISAIDR)
# devtools::install_github("Wytamma/GISAIDR")

## GISAID Credentials
credentials <- login(username = "syasa", password = "")

##############
## BJ.1

bj_1_RBD_aa <- "FHEVFNATTFASVYAWNRKRISNCVADYSVIYNLAPFFTFKCYGVSPTKLNDLCFTNVYADSFVIRGDEVRQIAPGQTGNIADYNYKLPDDFTGCVIAWNSNKLDSKPSGNYNYLYRLFRKSNLKPFERDISTEIYQAGNKPCNGAAGFNCYVPLRSYSFRPTYGVGHQPYRVVVLSFELLHAPATVCGPK"

bj_1_acc <- query(credentials = credentials, lineage = 'BJ.1', load_all = TRUE)
bj_1_df <- download(credentials = credentials, list_of_accession_ids = bj_1_acc$accession_id)  # see below for download() info.


bj_1_aa <- bj_1_df %>% 
  mutate(
    seq_split = str_split(sequence %>% tolower(), "")
    ) %>% 
  rowwise() %>% 
  mutate(
    aa_1_c = list(translate(seq_split, frame = 0)),
    aa_2_c = list(translate(seq_split, frame = 1)),
    aa_3_c = list(translate(seq_split, frame = 2)),
    aa_1 = paste(aa_1_c, collapse=""),
    aa_2 = paste(aa_2_c, collapse=""),
    aa_3 = paste(aa_3_c, collapse=""),
    aa_1_match = str_detect(aa_1, bj_1_RBD_aa),
    aa_2_match = str_detect(aa_2, bj_1_RBD_aa),
    aa_3_match = str_detect(aa_3, bj_1_RBD_aa)
  ) %>% 
  filter(aa_1_match | aa_2_match | aa_3_match) %>%
  select(accession_id,
         # aa_1, aa_2, aa_3,
         aa_1_match, aa_2_match, aa_3_match)

##############
## BM.1.1.1

bm_1_1_1_RBD_aa <- "FHEVFNATTFASVYAWNRKRISNCVADYSVLYNLAPFFTFKCYGVSPTKLNDLCFTNVYADSFVIRGDEVRQIAPGQTGNIADYNYKLPDDFTGCVIAWNSNKLDSKVSGNYNYLYRLFRKSKLKPFERDISTEIYQAGNKPCNGVAGSNCYFPLRSYSFRPTYGVGHQPYRVVVLSFELLHAPATVCGPK"

bm_1_1_1_acc <- query(credentials = credentials, lineage = 'BM.1.1.1', load_all = TRUE)
bm_1_1_1_df <- download(credentials = credentials, list_of_accession_ids = bm_1_1_1_acc$accession_id)  # see below for download() info.


bm_1_1_1_aa <- bm_1_1_1_df %>% 
  mutate(
    seq_split = str_split(sequence %>% tolower(), "")
  ) %>% 
  rowwise() %>% 
  mutate(
    aa_1_c = list(translate(seq_split, frame = 0)),
    aa_2_c = list(translate(seq_split, frame = 1)),
    aa_3_c = list(translate(seq_split, frame = 2)),
    aa_1 = paste(aa_1_c, collapse=""),
    aa_2 = paste(aa_2_c, collapse=""),
    aa_3 = paste(aa_3_c, collapse=""),
    aa_1_match = str_detect(aa_1, bm_1_1_1_RBD_aa),
    aa_2_match = str_detect(aa_2, bm_1_1_1_RBD_aa),
    aa_3_match = str_detect(aa_3, bm_1_1_1_RBD_aa)
  ) %>% 
  filter(aa_1_match | aa_2_match | aa_3_match) %>%
  select(accession_id,
         # aa_1, aa_2, aa_3,
         aa_1_match, aa_2_match, aa_3_match)


##############
## XBB.1.5

xbb_1_5_RBD_aa <- "FHEVFNATTFASVYAWNRKRISNCVADYSVIYNFAPFFAFKCYGVSPTKLNDLCFTNVYADSFVIRGNEVSQIAPGQTGNIADYNYKLPDDFTGCVIAWNSNKLDSKPSGNYNYLYRLFRKSKLKPFERDISTEIYQAGNKPCNGVAGPNCYSPLQSYGFRPTYGVGHQPYRVVVLSFELLHAPATVCGPK"
  
xbb_1_5_acc <- query(credentials = credentials, lineage = 'XBB.1.5', load_all = TRUE, complete = TRUE)
xbb_1_5_df <- download(credentials = credentials, list_of_accession_ids = xbb_1_5_acc$accession_id)  # see below for download() info.

xbb_1_5_aa <- xbb_1_5_df %>% 
  mutate(
    seq_split = str_split(sequence %>% tolower(), "")
  ) %>% 
  rowwise() %>% 
  mutate(
    aa_1_c = list(translate(seq_split, frame = 0)),
    aa_2_c = list(translate(seq_split, frame = 1)),
    aa_3_c = list(translate(seq_split, frame = 2)),
    aa_1 = paste(aa_1_c, collapse=""),
    aa_2 = paste(aa_2_c, collapse=""),
    aa_3 = paste(aa_3_c, collapse=""),
    aa_1_match = str_detect(aa_1, xbb_1_5_RBD_aa),
    aa_2_match = str_detect(aa_2, xbb_1_5_RBD_aa),
    aa_3_match = str_detect(aa_3, xbb_1_5_RBD_aa)
  ) %>% 
  filter(aa_1_match | aa_2_match | aa_3_match) %>%
  select(accession_id,
         # aa_1, aa_2, aa_3,
         aa_1_match, aa_2_match, aa_3_match)