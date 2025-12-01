# STAT107_PHC_Donnie_Marianne_Uriel
### Introduction
# Purpose:
The purpose of this experiment is to figure out if the choose independent variables not only prove that to influence the Poverty Headcount ratio. But to potentially figure out if by building a linear regression (either with transformation or alternative one) can help fores the next decades world wide poverty rate. The result of this research can help organization as United Nations to create a movement to either compile member nations to invest more of their GDP into education and improving their individual economies. And whatever policies they move will affect businesses on all levels and those on a consumer level. 

# Benefit:
This analysis should be to benefit government institutions that not only track but try to influence how much inflation would inflict upon society as a whole. Additionally knowing whether not a country like United Kingdom can reduce their nation's Poverty rate if unemployment is deemed the most influencing variable. The same applies for population growth however that is less controllable while being confined to moral reasons. 

# Question
-Main Question: Is the choose variables of average of; Education% per GDP, Unemployment, Population growth, Inflation able to influence the Poverty rate of the world?

-Sub-Question: Is it possible to forecast the Poverty headcount ratio for the foreseeable future. 

# Plan:
We hope to answer our question since, if it is determined that the independent variables have a significant ability to influence the Poverty head count ratio. Then going forward it would be possible to train a model that could potential forecast which would help government bodies worldwide create plans to counteract these shifts.

## Data 
There are currently five different data sets, all of which are from World Bank Group database. The dependent variable is currently referencing to Poverty Headcount ratio or Poverty rate for short($3.00 a day) being names as ND. The independent variables are about annual Population growth by percent (Pop_Growth), Inflation consumer price (API), Education Statistic (Education), Unemployment rate based of countries total (unemployment). There was additional information provided with Poverty rate, inflation and Population growth however it was not important enough to add. 

## Cleaning the Data:
For all the data sets being presented here, all were downloaded in a wide form for an excel spread sheet. Any other method did not work, which is why for the idea to work I needed to have it in long form. So after stripping each row, I would divide each row into groups of 270 of 65 indexes long. Then i would be able to create a new data frame for each csv file so it be easier to ru further code and not look like an eyesore otherwise. The associated varible names were df_ND,df_API,df_PG,df_Unemp,df_ed. 

## Visualization: 
Using not only linear regression but glm() function, we were able to created a forumla that not only did not better suit the data as a whole. It additionally was the best appalciation of said forumla, since applying poly(x, n) to the forumla onto Time varible. This allowed best version of glm created but it was a better fit when trying to use lm(). We ended up using plot() to plot the glm function, which gave us four different vsiuals: Residuals vs Fitted, Q-Qresiduals, Scale location, Residual-Leverage. 
## Analysis:
??????
Ideas:
explain how each indepedent variable inetracts with the dependent
explain each result of the plot(glm())


