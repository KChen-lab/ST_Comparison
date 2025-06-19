
set.seed(2023)
library(ggplot2)

ST_long <- ST %>% 
  pivot_longer(
    cols = `CosMx`:`ZXenium_MM`, 
    names_to = "platform",
    values_to = "percentage") 
ST_long$Cell_pl <- c("SCosMx","SMERFISH","SXenium_UM","SZXenium_MM","SCosMx","SMERFISH","SXenium_UM","SZXenium_MM","SCosMx","SMERFISH","SXenium_UM","SZXenium_MM",
                     "SCosMx","SMERFISH","SXenium_UM","SZXenium_MM","BCosMx","BMERFISH","BXenium_UM","BZXenium_MM","BCosMx","BMERFISH","BXenium_UM","BZXenium_MM",
                     "BCosMx","BMERFISH","BXenium_UM","BZXenium_MM","BCosMx","BMERFISH","BXenium_UM","BZXenium_MM","SCosMx","SMERFISH","SXenium_UM","SZXenium_MM","SCosMx","SMERFISH","SXenium_UM","SZXenium_MM","SCosMx","SMERFISH","SXenium_UM","SZXenium_MM",
                     "SCosMx","SMERFISH","SXenium_UM","SZXenium_MM","BCosMx","BMERFISH","BXenium_UM","BZXenium_MM","BCosMx","BMERFISH","BXenium_UM","BZXenium_MM",
                     "BCosMx","BMERFISH","BXenium_UM","BZXenium_MM","BCosMx","BMERFISH","BXenium_UM","BZXenium_MM")
mycomp=list(c("CosMx","MERFISH" ),c("CosMx","Xenium_UM" ),
            c("CosMx","ZXenium_MM" ))
mycomp1=list(c("ZXenium_MM","MERFISH" ),c("ZXenium_MM","Xenium_UM" ),
            c("MERFISH","Xenium_UM" ))

ggplot(ST, aes(x=platform, y = percentage, fill= platform))+
  geom_boxplot()+geom_point(stat="identity", position= "identity")+
  theme_bw()+ ggtitle("Coexpressions of disjoint genes")+ylab("Co-expressions, [%]")+
  facet_wrap(~Group)+xlab("")+
  scale_fill_manual(values=c("blue","purple","yellow3","orangered"))+
  stat_compare_means(method="wilcox.test", paired=F, comparisons = mycomp)+
  stat_compare_means(method="wilcox.test", paired=T, comparisons = mycomp1)
