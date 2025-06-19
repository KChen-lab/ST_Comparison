set.seed(2003)
library(ggplot2)



ggplot(ST,aes(x=factor(slides, level=c("CosMx_ICON1","Merfish_ICON1","CosMx_ICON2","Merfish_ICON2","Xenium_UM_ICON2","Xenium_MM_ICON2",
                                      "CosMx_Meso1","Xenium_UM_Meso1","Xenium_MM_Meso1",
                                      "CosMx_Meso2","Merfish_Meso2","Xenium_UM_Meso2","Xenium_MM_Meso2")), y=counts, size = variation,color=platform)) +
  geom_point() +theme_bw()+ xlab("")+ylim(75,145)+
  ylab("Mean of cell area size (um2) per cell")+
  ggtitle("Average cell area size per cell across ST platforms")+
  facet_grid(~TMA,scales='free')+
  scale_size(range = c(8, 12), name="Variation in cell size", breaks = c(400,600,800))+
  scale_color_manual(values=c("blue","purple","yellow3","orangered"))+
  theme(axis.text = element_text(size=18),strip.text = element_text(size=18))+
  theme(legend.text = element_text(size=18),title = element_text(size=18))
