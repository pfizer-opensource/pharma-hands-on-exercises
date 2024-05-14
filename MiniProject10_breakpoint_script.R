library(tidyverse)
myData <- tribble(~"ID",~"TIME",~"values",
                  1, 0, 12, 
                  1, 2, 13, 
                  1, 4, 14, 
                  1, 8, 20, 
                  2, 0, 15, 
                  2, 2, 16, 
                  2, 4, 18, 
                  2, 8, 22)

myGraph <- ggplot(myData, 
                  mapping= aes(x= TIME, y = values)) +
  geom_point() +
  geom_line()

myGraph
