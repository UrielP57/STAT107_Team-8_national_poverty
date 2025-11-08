# STAT107_PHC_Donnie_Marianne_Uriel

## Introduction: 
The purpose of this experiment was to create and train a model to not only establish a connection with the Poverty headcount ratio between the Inflation and Population Growth. But potential create a means to see trends that will eventually help foresee potential spikes worldwide. This analysis should be to benefit government institutions that not only track but try to influence how much inflation would inflict upon society as a whole. Moreover to see as if the world's population continues to rise, the poverty line would be swayed by it. This would implicate federal policies that end up being passed or being killed in the senate. Which in turn would affect local business all the way to international ones and even affect industries on mutiple levels.

## Question: 
Main Question: Is there a statistically significant correlation between inflation rate and the Poverty headcount ratio across countries worldwide?
Sub-Question: Which of the two effects; inflation rate or population growth, have a bigger influenced when it comes to affecting the Poverty headocunt ratio?

## Plan: 
We hope to answer our question since, if we are able to establish a connection between inflation to PHC. Then going forward it would be possible to train a model that could potential forecast the trends of inflation which would help government bodies worldwide create plans to counteract these shifts. However for the sub question, it is more of means of determining which of the two effects have a bigger influence if they do.

## Data: 
The data that is available is NEW_DDAY and NEW_DDAY dos are from the same set (Poverty Head Count at $3.00 a day (2021 PPP)), API_1 and API_2 are from the same data set (Inflation consumer prices (annual %) for the World, Grow (Population growth (annual%)). However API_2 and NEW_DDAY dos is less about data and its importance is more of the information it can present since it contains notes left behind from the makers of the csv file. That would explain why certain values appeared.  

## Cleaning the Data: 
For each of the three data sets, it was needed to recreate a data frame since the original csv file showed each excel file to have their rows and columns in the wrong place. Since basic R function like summary() or mean() would grab information from the file's columns, it would output an answer. However the number result would be wrong since it would be grabbing all 270 countries info for 1960. So df_ND,API,PG are just data frames with all the numeric information of the orginal csv file. So it looks more visually more appealing and so it be a ton easier to use any built in graphing function that will not produce the wrong result.  

## Visualization: 
We will be using linear regression, since it would not only help to answer our question. It would however make it easier to properly present our findings for the analysis section. Additionally the plan for this section is to compile the data into a linear regression so we are able to compare inflation to the Poverty head count for each 270 countries. Then we will code a way to compile all the results into four main groups, one for no signifcances and the other three will be based on p-value groups that the linear regression provides. 
## Analysis:
Then we will use the group that passes the lowest p-values as our defined findings. This is where the previous two data sets of API_2, and NEW_DDAY dos will come in handing in terms of trying to explain what reason cause us to see the results that we end up finding. And additional see if forecasting the results is even possible. 


