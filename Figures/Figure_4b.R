
set.seed(20203)
library(ggplot2)

## CosMx and RNAseq
ggscatter(ST, x = "D_C_genes_S", y = "C_MESO2_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "red",fill = "lightgray"),
                xlab = "RNAseq", ylab = "CosMx MESO2")+
  theme(text = element_text(size = 18))+
  geom_label(label=MESO2_D_M$genes)+
  ggtitle('MESO2 (n=960)')


## MERFISH and RNAseq
ggscatter(ST, x = "D_M_genes_S", y = "M_MESO2_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "red",fill = "lightgray"),
                xlab = "RNAseq", ylab = "Merfish MESO2")+
  theme(text = element_text(size = 18))+
  geom_label(label=MESO2_D_M$genes)+
  ggtitle('MESO2 (n=499)')

## Xenium_UM and RNAseq
ggscatter(ST, x = "D_X_genes_S", y = "X_MESO2_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "red",fill = "lightgray"),
                xlab = "RNAseq", ylab = "Xenium_UM MESO2")+
  theme(text = element_text(size = 18))+
  ggtitle('MESO2 (n=339)')

## Xenium_UM and RNAseq
ggscatter(ST, x = "D_X_new_genes_S", y = "X_MESO2_new_genes_S", 
                add = "reg.line", conf.int = TRUE, 
                cor.coef = TRUE, cor.method = "pearson",
                add.params = list(color = "red",fill = "lightgray"),
                xlab = "RNAseq", ylab = "Xenium_MM MESO2")+
  theme(text = element_text(size = 18))+
  ggtitle('MESO2 (n=339)')



