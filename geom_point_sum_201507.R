install.packages("tigris")
install.packages("maptools")
install.packages("broom")

library(tigris)
library(dplyr)
library(leaflet)
library(sp)
library(ggmap)
library(maptools)
library(broom)
library(httr)
library(rgdal)
library(tmaptools)

?register_google
register_google(key = "AIzaSyDFWqY3ZZF2Ooo0X7ZiPgkW_a49NFJTcH8")

nyc_map <- get_map(location = c(lon = -74.00, lat = 40.71), maptype = "terrain", zoom = 11)

plot_data = read.csv("summary_201507.csv")
ggmap(nyc_map) + geom_point(aes(x = pickup_longitude, y = pickup_latitude), colour="white", size = 0.01, data = plot_data, alpha = .5)
