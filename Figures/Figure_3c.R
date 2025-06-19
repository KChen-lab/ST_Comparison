set.seed(2023)

library(ggplot2)

ggplot(ST, aes(x=factor(cells, level = c('0','1','2','3','4','5','6','7','8','9',
                                                             '10','11','12','13','14','15','16','17','18',
                                                             '19','20','21','22','23','24','25','26','27','28',
                                                            '29','30','31','32','33','34','35','36','37','38',
                                                            '39','40','41','42','43','44','45','46','47','48','49','50')),y=counts, group = percent,color = platform))+
  geom_line(stat = "identity",position = "identity")+theme_bw()+ geom_point()+
  scale_color_manual(values = mycols)+xlab("Transcript Threshold")+ ylab("Remaining cell after filtering, [%]")+
  geom_vline(xintercept = c('10','30'), linetype = "longdash")+
  facet_wrap(~slide, nrow=1)+scale_color_manual(values=c("blue","purple","yellow3","orangered"))+
  ggtitle('Remaining Number of cells after filtering cells by transcript counts across platforms' )
