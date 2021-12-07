library(dplyr)
library(ggplot2)
library(readxl)
library(gridExtra)

data <- read_xlsx("../docking/HADDOCK_Results.xlsx") %>% 
  filter(`Antibody Name` != 'CR3022')

hs <- data %>%
  ggplot( aes(x=Variant, y=`HADDOCK score`, fill=Variant)) +
  geom_boxplot() +
  geom_jitter(color="black", size=0.4, alpha=0.9) +
  xlab("SARS-CoV-2 Variant")


ee <- data %>%
  ggplot( aes(x=Variant, y=`Electrostatic energy`, fill=Variant)) +
  geom_boxplot() +
  geom_jitter(color="black", size=0.4, alpha=0.9) +
  xlab("SARS-CoV-2 Variant")

ve <- data %>%
  ggplot( aes(x=Variant, y=`Van der Waals energy`, fill=Variant)) +
  geom_boxplot() +
  geom_jitter(color="black", size=0.4, alpha=0.9) +
  xlab("SARS-CoV-2 Variant")

de <- data %>%
  ggplot( aes(x=Variant, y=`Desolvation energy`, fill=Variant)) +
  geom_boxplot() +
  geom_jitter(color="black", size=0.4, alpha=0.9) +
  xlab("SARS-CoV-2 Variant")

re <- data %>%
  ggplot( aes(x=Variant, y=`Restraints violation energy`, fill=Variant)) +
  geom_boxplot() +
  geom_jitter(color="black", size=0.4, alpha=0.9) +
  xlab("SARS-CoV-2 Variant")

ba <- data %>%
  ggplot( aes(x=Variant, y=`Buried Surface Area`, fill=Variant)) +
  geom_boxplot() +
  geom_jitter(color="black", size=0.4, alpha=0.9) +
  xlab("SARS-CoV-2 Variant")

grid.arrange(hs, ee, ve, de, re, ba, 
             ncol = 3, nrow = 2)
