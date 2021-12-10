library(dplyr)
library(readxl)

data <- read_xlsx("HADDOCK_Results.xlsx") %>% 
  filter(`Antibody Name` != "CR3022")

# data_ref <- data %>% filter(`Analysis Type` == "Reference")
# data_pred <- data %>% filter(`Analysis Type` == "Prediction")

## Wilcox Test

pairwise.wilcox.test(data$`Desolvation energy`, data$`Analysis Type`, p.adjust.method="bonferroni")
pairwise.wilcox.test(data$`Electrostatic energy`, data$`Analysis Type`, p.adjust.method="bonferroni")
pairwise.wilcox.test(data$`Restraints violation energy`, data$`Analysis Type`, p.adjust.method="bonferroni")
pairwise.wilcox.test(data$`Van der Waals energy`, data$`Analysis Type`, p.adjust.method="bonferroni")
pairwise.wilcox.test(data$`HADDOCK score`, data$`Analysis Type`, p.adjust.method="bonferroni")
pairwise.wilcox.test(data$`Buried Surface Area`, data$`Analysis Type`, p.adjust.method="bonferroni")

