#bubble plot: aes(size)
ggplot(stud, aes(y=budget, x=contract))+geom_point(col='#da2028')+theme_bw()+
  xlab("Контракт")+
  ylab("Бюджет")+
  ggtitle("Студенти: контракт та бюджет")+
  labs(subtitle="такі діла", caption="Дані від Стадного")+
  guides(color=guide_legend(title=NULL))+
  theme(
    plot.title = element_text(size=18, family="Roboto", face="bold", colour = "#515151"),
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
