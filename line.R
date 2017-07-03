# cbPalette <- c('#a6cee3','#1f78b4','#b2df8a','#33a02c')

ggplot(v_long, aes(x=year, y=load, col=type))+geom_line()+theme_bw()+
  xlab("Види транспорту")+
  ylab("Одиниці")+
  ggtitle("Вантажоперевезення за видами транспорту")+
  labs(subtitle="Відповідні одиниці", caption="Дані з data.gov.ua")+
  guides(color=guide_legend(title=NULL))+
  theme(
    plot.title = element_text(size=18, family="Roboto", face="bold", colour = "#515151"),
    plot.subtitle = element_text(size=16, family="Roboto", color= "#515151", vjust=2),
    plot.caption = element_text(size=12, family="Roboto", color="#515151", face="italic"),
    panel.border=element_blank(),
    panel.background = element_rect(fill = "#ffffff"),
    plot.background = element_rect(fill = "#ffffff"),
    axis.title=element_text(size=12, family="Roboto", colour = "#515151"),
    axis.ticks=element_blank(),
    axis.text=element_text(size=10, family="Roboto", colour = "#515151"),
    panel.grid.major = element_line(colour = "#E8DCDC", size=.2),
    panel.grid.minor = element_blank(),
    plot.margin = unit(c(20, 20, 20, 20), "points"),
    legend.spacing = unit(0, "points"),
    legend.key.height=unit(5, "points"),
    legend.position = "bottom",
    legend.direction = "horizontal", 
    legend.box = "vertical",
    legend.box.just = "right",
    legend.key = element_blank(),
    legend.background = element_rect(fill = "#ffffff"),
    legend.text = element_text(family="Roboto", colour = "#515151", hjust=0),
    legend.title.align = 0,
    legend.text.align = 0
  )+scale_colour_manual(values=cbPalette)+
  scale_x_continuous(breaks=c(2000, 2005:2013),labels=c("2000", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013"))

