data <- sanfrancisco_incidents_summer_2014
data %>%
  group_by(DayOfWeek) %>%
  summarise_( IncidntNum = ~n()) %>%
  #tally(IncidntNum)
  top_n(10)%>%
  ggplot(aes(x = DayOfWeek, y = IncidntNum)) + 
  geom_bar(stat = "identity")

data %>%


  #group_by(DayOfWeek) %>%
  #summarise_( IncidntNum = ~n()) %>%
  #tally(IncidntNum)
  #top_n(10)%>%
  #ggplot(aes(x = data$Time, y = IncidntNum)) + 
  #geom_point()
