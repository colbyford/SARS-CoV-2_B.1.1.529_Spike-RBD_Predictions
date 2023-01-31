## Code to generate comparison plots for subvariant antibody performance

library(dplyr)
library(readxl)
library(ggplot2)
library(ggpubr)

data <- read_excel("HADDOCK_Results.xlsx", sheet = "Results") %>% 
  filter(`Antibody Name` != 'Omi-9')

# wilcox.test((data %>% filter(`Spike RBD` == "BJ.1"))$`HADDOCK score`,
#             (data %>% filter(`Spike RBD` == "XBB.1.5"))$`HADDOCK score`)

## Define Variant Comparisons
# variant_comparisons <- list(
#   c("BJ.1", "BM.1.1.1"),
#   c("BJ.1", "XBB.1.5"),
#   c("BM.1.1.1", "XBB.1.5")
#   )

variant_comparisons <- combn(c("B.1.1.529", "BJ.1", "BM.1.1.1", "XBB.1.5"), 2, simplify = FALSE)

## HADDOCK Score
had_plot <- ggboxplot(data, x = "Spike RBD",
          y = "HADDOCK score",
          color = "Spike RBD",
          palette = "jco",
          add = "dotplot") + 
  stat_compare_means(method = "wilcox.test", comparisons = variant_comparisons)


## Van der Waals Energy
vdw_plot <- ggboxplot(data, x = "Spike RBD",
          y = "Van der Waals energy",
          color = "Spike RBD",
          palette = "jco",
          add = "dotplot") + 
  stat_compare_means(method = "wilcox.test", comparisons = variant_comparisons)


## Electrostatic Energy
ee_plot <- ggboxplot(data, x = "Spike RBD",
          y = "Electrostatic energy",
          color = "Spike RBD",
          palette = "jco",
          add = "dotplot") + 
  stat_compare_means(method = "wilcox.test", comparisons = variant_comparisons)



figure <- ggarrange(had_plot, vdw_plot, ee_plot,
                    labels = c("HADDOCK Score", "van der Waals Energy", "Electrostatic Energy"),
                    ncol = 3, nrow = 1,
                    common.legend = TRUE, legend = "bottom")

figure
