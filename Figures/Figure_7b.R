

set.seed(2023)

library(ggplot2)

ggplot(F1, aes(x=review, y = counts, fill=review))+
  geom_boxplot(outlier.fill = NA)+
  geom_point(position=position_dodge(width=0.75),aes(group=review))+
  theme_bw()+ ylab("F1 score")+xlab("")+
  scale_fill_manual(values=c("blue","purple","orangered"))+
  ggtitle("F1 Score of ICON2 cell type annotations compared to pathologists' evaluation")+
  theme(axis.text = element_text(size=18),strip.text = element_text(size=18))+
  theme(legend.text = element_text(size=18),title = element_text(size=18))+
  facet_wrap(~cells, ncol=7)

