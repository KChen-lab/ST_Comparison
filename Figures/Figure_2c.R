set.seed(2023)
library(ggplot2)


ggplot(ST, aes(factor(x= Pt, level=c("CosMx","Xenium_uni","Xenium_multi")), y= log, col = genes))+
  facet_wrap(~Slide,ncol=4)+
  geom_point(position = position_jitterdodge(jitter.width = 0.1,
                                             dodge.width = 0.7))+
  theme_bw()+xlab("")+ggtitle("Transcript counts of negative and gene probes across ST Platforms")+
  ylab("log10(total counts)")+
  theme(text = element_text(size = 18),axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
