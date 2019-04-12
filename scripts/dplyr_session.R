##learning dplyr
rm(list=ls())#clear enviornment, you can restart R

#tidyverse
#R for Data Science
install.packages(dplyr)
library(dplyr)#warning,message,error can be in red
gapminder<-read.csv("data/gapminder_data.csv")
str(gapminder)
#using select function to pick certain columns
year_country_gdp<-gapminder %>% #pipe
  select(year,country,gdpPercap)
str(year_country_gdp)
#using filter function to pick certain rows
year_country_gdp_euro<-gapminder %>% filter(continent=="Europe") %>% select(year,country,gdpPercap)
str(year_country_gdp_euro)e>% summarise(mean_weight=mean(weight))
cats<-read.csv("data/feline.csv")
lifeExp_by_country<-gapminder %>% group_by(country) %>% summarise(mean_lifeExp=mean(lifeExp))
lifeExp_by_country
sort(lifeExp_by_country$mean_lifeExp)
head(lifeExp_by_country)
Max_min<-lifeExp_by_country %>% filter(mean_lifeExp==max(mean_lifeExp)| mean_lifeExp == min(mean_lifeExp))
Max_min
#integrating ggplot and dplyr
library(ggplot2)
gapminder %>%
  group_by(country,year) %>%
  summarise(mean_lifeExp = mean(lifeExp)) %>%
  ggplot(aes(x=country,y=mean_lifeExp)) + geom_point()
