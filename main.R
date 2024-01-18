library(tidyverse)
library(modeldata)
library(readxl)
library(ggplot2)

#wpisz sobie swój path
data = read_excel("Sprawozdanie PDF/dane.xlsx")

# Próbka danych
head(data)

# Statystyki opisowe 
summary(data)

# Dane bez wartości brakujących
dropped_missing <- data[, c("BodyweightKg", "TotalKg")] %>% drop_na()

head(dropped_missing)
# data = filter(data, )

# Convert columns from chr to float
dropped_missing$BodyweightKg <- as.numeric(dropped_missing$BodyweightKg)
dropped_missing$TotalKg <- as.numeric(dropped_missing$TotalKg)

# Scatter plot of TotalKg vs BodyweightKg
ggplot(dropped_missing, aes(x = BodyweightKg, y = TotalKg)) +
    geom_point() +
    labs(x = "Bodyweight (Kg)", y = "Total (Kg)") +
    ggtitle("Scatter plot of TotalKg vs BodyweightKg")


