library(ggplot2)

percData<-read.csv("percData.csv")
fluData<-read.csv("Flu Data.csv")

#percent confirmed cases plot-------------------------------------------

ggplot(data=percData, aes(x=Days))+
  
  theme(plot.title=element_text(size=30, hjust=0.5),
        text=element_text(family="Arial"))+
  ggtitle("Population Prevalence Percentage")+
  xlab("Days (starting 01/22)")+
  ylab("Percent of Population")+
  
  geom_point(aes(y=ChinaConfPerc), color="DarkRed")+
    geom_smooth(aes(y=ChinaConfPerc), color="Red")+
      annotate("text", label="China (red)", x=25, y=0.0003)+
  geom_point(aes(y=USConfPerc), color="DarkBlue")+
    geom_smooth(aes(y=USConfPerc), color="Blue")+
      annotate("text", label="United States (blue)", x=83, y=0.0021,
               angle=51)+
  geom_point(aes(y=UKConfPerc), color="Orange")+
    geom_smooth(aes(y=UKConfPerc), color="Yellow")+
      annotate("text", label="United Kingdom (yellow)", x=88, y=0.0015,
               angle=49)+

  geom_vline(xintercept=56, alpha=0.5)+ #bar and restaurant restrictions 3/17
    annotate("text", label="3/17: Restrictions on bars and restaurants",
             x=55, y=0.0021, angle=90, alpha=0.5)+
  geom_vline(xintercept=66, alpha=0.5)+ #stay home order 3/27
   annotate("text", label="3/27: Stay at home order",
             x=65, y=0.0021, angle=90, alpha=0.5)+
  geom_vline(xintercept=108, alpha=0.5)+ #Phase 1 reopening 5/8
    annotate("text", label="5/8: Phase 1 reopening",
             x=107, y=0.0021, angle=90, alpha=0.5)+
  geom_vline(xintercept=122, alpha=0.5)+ #Phase 2 reopening 5/22
    annotate("text", label="5/22: Phase 2 reopening",
             x=121, y=0.0021, angle=90, alpha=0.5)+
  geom_vline(xintercept=127, alpha=0.5)+ #Widespread riots (Floyd DOD 5/25)
    annotate("text", label="5/27: Widespread rioting starts",
             x=126, y=0.0021, angle=90, alpha=0.5)

#incidence plot---------------------------------------------------------

ggplot(data=percData, aes(x=Days))+
  
  theme(plot.title=element_text(size=30, hjust=0.5),
        text=element_text(family="Arial"))+
  ggtitle("Population Incidence")+
  xlab("Days (starting 01/22)")+
  ylab("Incidence")+

  geom_point(aes(y=ChinaInc), color="DarkRed")+
    geom_smooth(aes(y=ChinaInc), color="Red")+
      annotate("text", label="China (red)", x=15, y=6500)+
  geom_point(aes(y=USInc), color="DarkBlue")+
    geom_smooth(aes(y=USInc), color="Blue")+
      annotate("text", label="United States (blue)", x=80, y=37000)+
  geom_point(aes(y=UKInc), color="Orange")+
    geom_smooth(aes(y=UKInc), color="Yellow")+
      annotate("text", label="United Kingdom (yellow)", x=93, y=8800)+  
  
  geom_vline(xintercept=56, alpha=0.5)+ #bar and restaurant restrictions 3/17
    annotate("text", label="3/17: Restrictions on bars and restaurants", 
             x=55, y=33000, angle=90, alpha=0.5)+
  geom_vline(xintercept=66, alpha=0.5)+ #stay home order 3/27
    annotate("text", label="3/27: Stay at home order", 
             x=65, y=33000, angle=90, alpha=0.5)+
  geom_vline(xintercept=108, alpha=0.5)+ #Phase 1 reopening 5/8
    annotate("text", label="5/8: Phase 1 reopening", 
             x=107, y=37000, angle=90, alpha=0.5)+
  geom_vline(xintercept=122, alpha=0.5)+ #Phase 2 reopening 5/22
    annotate("text", label="5/22: Phase 2 reopening", 
             x=121, y=34000, angle=90, alpha=0.5)+
  geom_vline(xintercept=127, alpha=0.5)+ #Widespread riots (Floyd DOD 5/25)
    annotate("text", label="5/27: Widespread rioting starts", 
             x=126, y=34000, angle=90, alpha=0.5)


