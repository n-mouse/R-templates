ggplot(vantazh, aes(y=X2013, x=reorder(type, -X2013)))+geom_bar(stat="identity", fill="#da2028", width=.5)+theme_bw()+
  xlab("Види транспорту")+
  ylab("Одиниці")+
  ggtitle("Вантажоперевезення за видами транспорту")+
  labs(subtitle="Відповідні одиниці", caption="Дані з data.gov.ua")+
  guides(color=guide_legend(title="заголовок легенди"))+
  theme(
    plot.title = element_text(size=20, family="Roboto", face="bold", colour = "#515151"),
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
    plot.margin = unit(c(20, 20, 20, 20), "points")
  )

ggplot(salary, aes(x=dek))+geom_histogram(binwidth=500, col="white", fill="#da2028")+theme_bw()+
  xlab("Види транспорту")+
  ggtitle("Розподіл зарплат деканів в університетах")+
  labs(caption="Дані від Стадного")+
  guides(color=guide_legend(title="заголовок легенди"))+
  theme(
    plot.title = element_text(size=20, family="Roboto", face="bold", colour = "#515151",vjust=2),
    plot.caption = element_text(size=12, family="Roboto", color="#515151", face="italic"),
    panel.border=element_blank(),
    panel.background = element_rect(fill = "#ffffff"),
    plot.background = element_rect(fill = "#ffffff"),
    axis.title=element_blank(),
    axis.ticks=element_blank(),
    axis.text=element_text(size=10, family="Roboto", colour = "#515151"),
    panel.grid.major = element_line(colour = "#E8DCDC", size=.2),
    panel.grid.minor = element_blank(),
    plot.margin = unit(c(20, 20, 20, 20), "points")
  )+scale_x_continuous(breaks=seq(0, 14000, by = 2000))

#+coord_flip() - horizontal

