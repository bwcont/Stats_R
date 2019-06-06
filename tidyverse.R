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


##arrange verb
#sorts data in descending or ascending manner

#ascending
gapminder %>%
  arrange(gdpPercap)

#descending
gapminder %>%
  arrange(desc(gdpPercap))

##combining verbs
gapminder %>%
  filter(year == 2007) %>%
  arrange(desc(gdpPercap))
#in above example, we fed our data set to only have 2007 data
#then we arranged that in descending order by piping the previous
#info to the next verb







