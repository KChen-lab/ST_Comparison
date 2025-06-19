
set.seed(20203)
library(ggplot2)

## CosMx and DSP WTA
ggscatter(ST, x = "D_C_genes_S", y = "C_ICON2_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "blue",fill = "lightgray"),
                xlab = "DSP WTA", ylab = "CosMx ICON2")+
  theme(text = element_text(size = 18))+
  geom_label(label=ICON2_D_M$genes)+
  ggtitle('ICON2 (n=962)')


## MERFISH and DSP WTA
ggscatter(ST, x = "D_M_genes_S", y = "M_ICON2_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "blue",fill = "lightgray"),
                xlab = "DSP WTA", ylab = "Merfish ICON2")+
  theme(text = element_text(size = 18))+
  geom_label(label=ICON2_D_M$genes)+
  ggtitle('ICON2 (n=494)')

## Xenium_UM and DSP WTA
ggscatter(ST, x = "D_X_genes_S", y = "X_ICON2_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "blue",fill = "lightgray"),
                xlab = "DSP WTA", ylab = "Xenium_UM ICON2")+
  theme(text = element_text(size = 18))+
  ggtitle('ICON2 (n=336)')

## Xenium_UM and DSP WTA
ggscatter(ST, x = "D_X_new_genes_S", y = "X_ICON2_new_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "blue",fill = "lightgray"),
                xlab = "DSP WTA", ylab = "Xenium_MM ICON2")+
  theme(text = element_text(size = 18))+
  ggtitle('ICON2 (n=336)')
