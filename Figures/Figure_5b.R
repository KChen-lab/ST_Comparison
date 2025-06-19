
set.seed(20203)
library(ggplot2)

## CosMx and DSP WTA
ggscatter(ST, x = "D_C_genes_S", y = "C_MESO2_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "blue",fill = "lightgray"),
                xlab = "DSP WTA", ylab = "CosMx MESO2")+
  theme(text = element_text(size = 18))+
  geom_label(label=MESO2_D_M$genes)+
  ggtitle('MESO2 (n=962)')


## MERFISH and DSP WTA
ggscatter(ST, x = "D_M_genes_S", y = "M_MESO2_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "blue",fill = "lightgray"),
                xlab = "DSP WTA", ylab = "Merfish MESO2")+
  theme(text = element_text(size = 18))+
  geom_label(label=MESO2_D_M$genes)+
  ggtitle('MESO2 (n=494)')

## Xenium_UM and DSP WTA
ggscatter(ST, x = "D_X_genes_S", y = "X_MESO2_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "blue",fill = "lightgray"),
                xlab = "DSP WTA", ylab = "Xenium_UM MESO2")+
  theme(text = element_text(size = 18))+
  ggtitle('MESO2 (n=336)')

## Xenium_UM and DSP WTA
ggscatter(ST, x = "D_X_new_genes_S", y = "X_MESO2_new_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "blue",fill = "lightgray"),
                xlab = "DSP WTA", ylab = "Xenium_MM MESO2")+
  theme(text = element_text(size = 18))+
  ggtitle('MESO2 (n=336)')
