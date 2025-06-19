

set.seed(20203)
library(ggplot2)

## CosMx and Xenium_UM
ggscatter(ST, x = "C_ICON2_genes_S", y = "X_ICON2_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "green",fill = "lightgray"),
                xlab = CosMx ICON2", ylab = "Xenium_UM ICON2")+
  theme(text = element_text(size = 18))+
  ggtitle('ICON2 (n=153)')


## MERFISH and Xenium_UM
ggscatter(ST, x = "X_ICON2_genes_S", y = "M_ICON2_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "green",fill = "lightgray"),
                xlab = "Xenium-UM ICON2", ylab = "Merfish ICON2")+
  theme(text = element_text(size = 18))+
  ggtitle('ICON2 (n=118)')

## MERFISH and CosMx
ggscatter(ST, x = "C_ICON2_genes_S", y = "M_ICON2_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "green",fill = "lightgray"),
                xlab = "CosMx ICON2", ylab = "Merfish ICON2")+
  theme(text = element_text(size = 18))+
  ggtitle('ICON2 (n=302)')

## Xenium_UM and  Xenium_MM
ggscatter(ST, x = "X_ICON2_genes_S", y = "X_ICON2_new_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "green",fill = "lightgray"),
                xlab = "Xenium_UM ICON2", ylab = "Xenium_MM ICON2")+
  theme(text = element_text(size = 18))+
  ggtitle('ICON2 (n=339)')
