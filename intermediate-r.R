1+1

#do something bad
log(10)/0

round(x=3.14)

round(x=3.14, digits = 1)

round(3.14, 1)

some_name <- 1
some_name
print(some_name)

some_name <- 1 + 1 + round(3.14,1)
some_name

some_name <- data.frame(
  first_vec=c("fresh", "soph", "junior", "senior", "job??"), 
  year=c(2004, 2005, 2006, 2008, 2009),
  gpa=c(2.5, 3.0, 3.5, 4.0, mean(2.5, 3.0, 3.5, 4.0)), stringsAsFactors = F)
some_name
View(some_name)
head(some_name, 1)

some_name == 1

str(some_name)
str(some_name == 1)

#common types
##character
##number
##logical
##factor

plot(x=some_name$year, y=some_name$gpa)

#install.packages('ggplot2')
library(ggplot2) #load ggplot2
ggplot(data = some_name, mapping=aes(x=first_vec,y=gpa)) +
  geom_point()

summary(some_name)

mod <- lm(gpa~year, data=some_name)
summary(mod)

write.csv(some_name, file="some_name.csv", row.names = F, quote = F)
tmp <- read.csv("some_name.csv")

gapminder <- 
  read.csv("https://raw.githubusercontent.com/datacarpentry/r-intro-geospatial/master/_episodes_rmd/data/gapminder_data.csv", stringsAsFactors = F)
str(gapminder)

