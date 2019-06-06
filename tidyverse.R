##Installation of packages
install.packages("gapminder")
install.packages("dplyr")

##Load packages
library(gapminder)
library(dplyr)

##See available data
gapminder

##filter verb
gapminder %>% #%>% is a pipe which is saying to feed the preceding element into the following step
  filter(year == 2007)
#the pipe is necessary for filter to be used

gapminder %>% 
  filter(country == "United States", year == 2007)







