## Code to generate comparison plots for subvariant antibody performance

library(dplyr)
library(readxl)
library(ggplot2)
library(ggpubr)

data <- read_excel("HADDOCK_Results.xlsx", sheet = "Results") %>% 
  filter(`Antibody Name` != 'Omi-9') %>% 
  mutate(van_der_waals_energy = `Van der Waals energy`,
         haddock_score = `HADDOCK score`,
         electrostatic_energy = `Electrostatic energy`,
         desolvation_energy = `Desolvation energy`,
         restraints_violation_energy = `Restraints violation energy`,
         buried_surface_area = `Buried Surface Area`)

moctet_model <- readRDS("moctet_model.RDS")

data$`Predicted Octet Affinity` <- predict(moctet_model, data)

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

## Desolvation Energy
de_plot <- ggboxplot(data, x = "Spike RBD",
                     y = "Desolvation energy",
                     color = "Spike RBD",
                     palette = "jco",
                     add = "dotplot") + 
  stat_compare_means(method = "wilcox.test", comparisons = variant_comparisons)

## Restraints Violation Energy
# rve_plot <- ggboxplot(data, x = "Spike RBD",
#                      y = "Restraints violation energy",
#                      color = "Spike RBD",
#                      palette = "jco",
#                      add = "dotplot") + 
#   stat_compare_means(method = "wilcox.test", comparisons = variant_comparisons)

## Predicted Octet Affinity
poa_plot <- ggboxplot(data, x = "Spike RBD",
                      y = "Predicted Octet Affinity",
                      ylab = "Predicted Octet Affinity\nlog(kD/nM)",
                      color = "Spike RBD",
                      palette = "jco",
                      add = "dotplot") + 
  stat_compare_means(method = "wilcox.test", comparisons = variant_comparisons)

## Buried Surface Area
bsa_plot <- ggboxplot(data, x = "Spike RBD",
                     y = "Buried Surface Area",
                     color = "Spike RBD",
                     palette = "jco",
                     add = "dotplot") + 
  stat_compare_means(method = "wilcox.test", comparisons = variant_comparisons)

figure <- ggarrange(had_plot, vdw_plot, ee_plot, de_plot, poa_plot, bsa_plot,
                    # labels = c("HADDOCK Score",
                    #            "van der Waals Energy",
                    #            "Electrostatic Energy",
                    #            "Desolvation Energy",
                    #            "Restraints Violation Energy",
                    #            "Buried Surface Area"),
                    labels = c("A", "B", "C", "D", "E", "F"),
                    ncol = 3, nrow = 2,
                    common.legend = TRUE,
                    legend = "bottom")

figure
