ggplot(v_long, aes(x=year, y=load, col="#da2028"))+geom_line()+theme_bw()+
  xlab("")+
  ylab("Одиниці")+
  ggtitle("Вантажоперевезення за видами транспорту")+
  labs(caption="Дані з data.gov.ua")+
  theme(
    plot.title = element_text(size=18, family="Roboto", face="bold", colour = "#515151", vjust=3),
    plot.caption = element_text(size=12, family="Roboto", color="#515151", face="italic"),
    panel.border=element_blank(),
    panel.background = element_rect(fill = "#ffffff"),
    plot.background = element_rect(fill = "#ffffff"),
    axis.title=element_text(size=12, family="Roboto", colour = "#515151"),
    axis.ticks=element_blank(),
    axis.text=element_text(size=10, family="Roboto", colour = "#515151"),
    panel.grid.major = element_line(colour = "#E8DCDC", size=.2),
    panel.grid.minor = element_blank(),
    plot.margin = unit(c(30,30, 20, 20), "points"),
    legend.position="none",
    strip.background = element_rect(fill = "white",color="white"),
    strip.text=element_text(size=12)
  )+facet_grid(.~type)


