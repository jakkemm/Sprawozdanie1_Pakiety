library(tidyverse)
library(modeldata)
library(readxl)
library(ggplot2)

setwd("./dane.xlsx")
#wpisz sobie swój path
data = read_excel("dane.xlsx")
view(data)

