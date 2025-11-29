---
  title: "Week 9, excerise 3"
author: "Uriel S. Pacheco-Guerrero"
date: "`r Sys.Date()`"
output: html_document
---



library(readxl)
myData <- read_excel("C:/Users/User/Downloads/jaggia_ba_2025_ch10_data.xlsx", 
                                       sheet = "Vehicle_Miles")
library(readxl)
library(dplyr)

library(ggplot2)
library(forecast)

library(tibble)

head(myData)

summary(myData)
Miles_summary <- myData %>%
  summarise(
    N = n(),
    Mean = mean(Miles),
    SD = sd(Miles),
    Min = min(Miles),
    Median = median(Miles),
    Max = max(Miles)
  )
knitr::kable(Miles_summary, caption = "Summary Statistics of Miles")

newData <- ts(myData$Miles,
              start = c(2012, 1),
              frequency = 12)

newData

autoplot(newData) +
  ggtitle("Monthly Miles Driven (2012–2018)") +
  xlab("Year") + ylab("Miles")

dec <- decompose(newData, type = "additive")
autoplot(dec)

Linear_Model <- tslm(newData ~ trend + season)
summary(Linear_Model)

Exponential_Model <- tslm(log(newData) ~ trend + season)
summary(Exponential_Model)

accuracy(fitted(Linear_Model), myData$Miles)
se <- sigma(Exponential_Model)

accuracy(exp(fitted(Exponential_Model)+se^2/2), myData$Miles)
flg <- forecast(Exponential_Model, h = 10)
exp(flg$mean + se^2/2)
