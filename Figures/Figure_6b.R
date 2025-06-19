

set.seed(20203)
library(ggplot2)

## CosMx and Xenium_UM
ggscatter(ST, x = "C_Meso2_genes_S", y = "X_Meso2_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "green",fill = "lightgray"),
                xlab = CosMx Meso2", ylab = "Xenium_UM Meso2")+
  theme(text = element_text(size = 18))+
  ggtitle('Meso2 (n=153)')


## MERFISH and Xenium_UM
ggscatter(ST, x = "X_Meso2_genes_S", y = "M_Meso2_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "green",fill = "lightgray"),
                xlab = "Xenium-UM Meso2", ylab = "Merfish Meso2")+
  theme(text = element_text(size = 18))+
  ggtitle('Meso2 (n=118)')

## MERFISH and CosMx
ggscatter(ST, x = "C_Meso2_genes_S", y = "M_Meso2_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "green",fill = "lightgray"),
                xlab = "CosMx Meso2", ylab = "Merfish Meso2")+
  theme(text = element_text(size = 18))+
  ggtitle('Meso2 (n=302)')

## Xenium_UM and  Xenium_MM
ggscatter(ST, x = "X_Meso2_genes_S", y = "X_Meso2_new_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "green",fill = "lightgray"),
                xlab = "Xenium_UM Meso2", ylab = "Xenium_MM Meso2")+
  theme(text = element_text(size = 18))+
  ggtitle('Meso2 (n=339)')
