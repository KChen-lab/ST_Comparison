set.seed(2023)
library(ggplot2)
library(ggbreak)


ggplot(FDR, aes(factor(x=platform, level=c("CosMx","Merfish","Xenium unimodal","Xenium multi modal")), y= FDR, fill=gene))+
  #geom_col(colour="black",width=0.7,position="dodge")+
  geom_bar(position="dodge",width=.6, stat="identity")+
  theme_bw()+ylab("percentage of FDR, [%]")+
  ggtitle("FDR")+xlab("")+
  scale_fill_manual(values=c("#6196e2", "#61e2a8"))+
  facet_wrap(~slide,ncol = 4)+
  geom_hline(yintercept = 0)+
  scale_y_cut(breaks=c(0.1))+ylim(0,13)+
  theme(text = element_text(size = 18),axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

