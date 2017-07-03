salary.w = gather(salary, level, salary, rek:prof)

salary.w$level = as.factor(salary.w$level)

salary.w$level =factor(salary.w$level, levels=c("rek", "dek", "zav", "prof"))

ggplot(salary.w, aes(level, uni)) + geom_tile(aes(fill = salary), colour = "white")+
 scale_fill_gradient(low = "white", high = "steelblue")+theme_bw()+
  ggtitle("Зарплата в університетах")+
  labs(caption="Дані від Стадного")+
  guides(fill=guide_legend(title="грн"))+
  theme(
    plot.title = element_text(size=18, family="Roboto", face="bold", colour = "#515151", hjust=-0.3, vjust=2),
    plot.caption = element_text(size=12, family="Roboto", color="#515151", face="italic", vjust=-2),
    panel.border=element_blank(),
    panel.background = element_rect(fill = "#ffffff"),
    plot.background = element_rect(fill = "#ffffff"),
    axis.title=element_blank(),
    axis.ticks=element_blank(),
    axis.text=element_text(size=10, family="Roboto", colour = "#515151"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.margin = unit(c(20, 20, 20, 20), "points")
  )+scale_x_discrete(labels=c("ректори", "декани", "завкафи", "професори, \nстарші викладачі"))
