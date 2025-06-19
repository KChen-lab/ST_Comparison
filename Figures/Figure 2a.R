set.seed(2023)
library(ggplot2)

P <- ggplot(ST, aes( x=factor(slides, level=c("CosMx_ICON1","Merfish_ICON1","CosMx_ICON2","Merfish_ICON2","Xenium_UM_ICON2","Xenium_MM_ICON2",
                                                            "CosMx_Meso1","Xenium_UM_Meso1","Xenium_UM_Meso1",
                                                            "CosMx_Meso2","Merfish_Meso2","Xenium_UM_Meso2","Xenium_MM_Meso2")), y=counts, fill=slides)) +
  geom_boxplot(width=0.3, color="black") +
  theme_bw() +facet_grid()+
  stat_summary(fun=mean, colour="darkred", geom="point", 
               shape=18, size=3, show.legend=FALSE) + 
  #geom_text_repel(data = means, aes(label = counts, y = counts + 0.08))+
  #geom_text_repel(data = medians, aes(label = counts, y = counts + 0.15))+
  scale_fill_manual(values=mycols)+
  xlab("")+theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

P
