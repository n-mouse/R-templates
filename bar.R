ggplot(vytraty, aes(y=y2013, x=reorder(type, -y2013)))+geom_bar(stat="identity", fill="#da2028", width=.5)+
  xlab("Види транспорту")+
  ylab("Одиниці")+
  ggtitle("Заголовок")+
  labs(subtitle="Підзаголовок", caption="Дані з data.gov.ua")+
  theme(
    legend.title=element_blank(),
    plot.title = element_text(size=20, family="Roboto", face="bold", colour = "#515151", margin=margin(0,0,10,0)),
    plot.subtitle = element_text(size=16, family="Roboto", color= "#515151", margin=margin(0,0,25,0)),
    plot.caption = element_text(size=12, family="Roboto", color="#515151", face="italic"),
    panel.border=element_blank(),
    panel.background = element_rect(fill = "#ffffff"),
    plot.background = element_rect(fill = "#ffffff"),
    axis.title.x=element_text(size=12, family="Roboto", colour = "#515151", margin=margin(15,0,0,0)),
    axis.title.y=element_text(size=12, family="Roboto", colour = "#515151", margin=margin(0,10,0,0)),
    axis.ticks=element_blank(),
    axis.text=element_text(size=10, family="Roboto", colour = "#515151"),
    panel.grid.major = element_line(colour = "#E8DCDC", size=.2),
    panel.grid.minor = element_blank(),
    plot.margin = unit(c(20, 20, 20, 20), "points")
  )

ggplot(salary, aes(x=dek))+geom_histogram(binwidth=500, col="white", fill="#da2028")+theme_bw()+
  ggtitle("Розподіл зарплат декані\nв в університетах")+
  labs(caption="Дані від Стадного")+
  theme(
    plot.title = element_text(size=20, family="Roboto", face="bold", colour = "#515151", margin=margin(0,0,10,0)),
    plot.subtitle = element_text(size=16, family="Roboto", color= "#515151", margin=margin(0,0,25,0)),
    plot.caption = element_text(size=12, family="Roboto", color="#515151", face="italic", margin=margin(15,0,0,0)),
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

