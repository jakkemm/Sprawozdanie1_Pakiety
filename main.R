library(tidyverse)
library(modeldata)
library(readxl)
library(ggplot2)

setwd("/Users/jakubkempa/Documents/5 Semestr/Pakiety statystyczne/Sprawozdanie1_Pakiety")
#wpisz sobie swój path

data = read_excel("dane.xlsx")
# data = filter(data, )

data %>% ggplot(aes(x=BodyweightKg, y=TotalKg))
