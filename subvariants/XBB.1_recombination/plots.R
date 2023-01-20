library(dplyr)
library(readxl)
library(ggplot2)
library(ggpubr)

data <- read_excel("HADDOCK_Results.xlsx")

# wilcox.test((data %>% filter(`Spike RBD` == "BJ.1"))$`HADDOCK score`,
#             (data %>% filter(`Spike RBD` == "XBB.1.5"))$`HADDOCK score`)


variant_comparisons <- list(
  c("BJ.1", "BM.1.1.1"),
  c("BJ.1", "XBB.1.5"),
  c("BM.1.1.1", "XBB.1.5")
  )


## HADDOCK Score
ggboxplot(data, x = "Spike RBD",
          y = "HADDOCK score",
          color = "Spike RBD",
          palette = "jco") + 
  stat_compare_means(method = "wilcox.test", comparisons = variant_comparisons)


## Van der Waals Energy
ggboxplot(data, x = "Spike RBD",
          y = "Van der Waals energy",
          color = "Spike RBD",
          palette = "jco") + 
  stat_compare_means(method = "wilcox.test", comparisons = variant_comparisons)


## Electrostatic Energy
ggboxplot(data, x = "Spike RBD",
          y = "Electrostatic energy",
          color = "Spike RBD",
          palette = "jco") + 
  stat_compare_means(method = "wilcox.test", comparisons = variant_comparisons)
