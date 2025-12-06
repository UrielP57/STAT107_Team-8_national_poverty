# STAT107_PHC_Donnie_Marianne_Uriel
### Introduction
# Purpose:
The idea of this study is to narrow down which of the 6 predictors selected for this study has considerably influenced the Poverty Headcount Ratio at $3.00 per day. The lucky predictors are Inflation, Population Growth, Unemployment, Education, Death rate, and GDP. All but GDP are noted down by countries' annual percent amounts, if that will be by percentages of GDP, total labor force, or consumer price. By using two versions of the linear regression model, we analyze the world's Poverty rate using data spanning 270 countries from 1960 to 2024. 

By running a multi-variable linear regression model, where model 1 will be the variables themselves with no transformation, and model 2 will contain two transformations of the square root and logarithmic. The results demonstrate that heavy-weight predictors ended up being population growth, Death rate, GDP, and Education since they ended up being more significant than Inflation and Unemployment. We applied the square root to the predicted variable (Poverty rate) to prevent skewness from extremely low or high points influencing our results. Knowing how critical to be informed about the inner workings of what affects the poverty rate could potentially help raise the standard of living of most folks living right now. Additionally, it could help influential individuals like world leaders, legislators, and organizations like the United Nations to start enforcing policies. That can allow for more agencies to focus more on homelessness, literacy levels, and free education for those willing to learn. 

# Introduction:
The goal of the analysis is to figure out if the chosen variables do, in fact, influence the Poverty Rate. There are two questions we intend to answer, the first being: Are the selected variables statistically significant to be able to influence the Poverty rate of the World? The second question: Is it possible to forecast the Poverty Headcount ratio for the foreseeable future accurately?

The results of the analysis are meant to provide those in power, like legislators, who have the ability to relocate funds/pass laws to reduce the negative effects that are associated with the Poverty rate. Additionally, by making these results public, they will allow the general public to be aware of what's influencing the poverty rate for most countries. To hopefully allow them to make their respective governments take more accountability, or even be more hands-on with the causes themselves. 

Using linear regression to forecast the upcoming years of the overall Poverty rate of the 270 countries provides a critical time for laws and help to be accomplished in time. We hope to improve the model accuracy and ability to forecast new spikes by transforming the linear regression with square rooting the predicted results and by transforming GPD(in US dollars) into a more friendly form so it won't skew the rest of the variables that are by percent.

## Data 
We are using 6 databases, all of which are from the World Bank Group database. The predicted variable is currently the Poverty Headcount ratio at $3.00 a day (Poverty rate). The predictor variables will be Population Growth (annual %), Inflation consumer price (annual %), Education(% of GDP), Unemployment rate (% of total workforce), GDP (in US dollars), and Death rate (crude % by [actual death/1000]).  

## Cleaning the Data:
For all the data sets being presented here, all were downloaded in a wide form for an Excel spreadsheet. The rows were the 270 countries, and each column, starting at column 5, was the years from 1960 to 2024. However, actual data from any of the 7 data sets accumulated to 17290 observations for each one.

So to clean the data, it was necessary to convert each data set into long form by using pivot_longer() of the tidyverse package. We started at 5 because we removed columns 2 through 4 because they were indicators from the original makers, and we did this by manually removing the columns, such as ND[-2:-4], into a new data frame called hot. Additionally, we skipped the first 4 rows of the data set to better set up the conversion function. 

Then we converted the data frame by setting into a long form by using pivot_longer() of the tidyverse package. We would associate each data frame with its own long form, such as df_pv for Poverty rate or df_INf for Inflation rate, and so on. As to not to cause unintentional skewness, many entries have NA as their entry, not because they were deleted or removed, but because the given data set did not have an entry for them. 

## Code
We had 8 key steps in our code. First, we loaded the 7 datasets (poverty, inflation, population growth, etc.). We cleaned each dataset and made the data more usable and efficient. We merged all the datasets into a combined country and year dataset. We used two regression models, the standard linear model as well as a transformed model (sqrt(poverty rate) and log(GDP)). We displayed all the regression line results with the help of stargazer and also checked multicollinearity with the Variance Inflation Factor. We used those plots to analyze the resulting data and evaluate the models, and lastly, we made scatterplots to help visualize the relationship between poverty rate and all of the predictors.

## Files
There are multiple RMD files with multiple uses in this project. Our main RMD is Pr of the World.Rmd, which is the file with all the code, as well as the introductions, purpose, data, etc. We also have 11_DataCleaning.Rmd, 12_DataProcessing.Rmd, 13_DataVisualization.Rmd, which are the RMD files that show the data cleaning, data processing, and analysis, respectively. We also have 00_requirements.R, which shows all the libraries that were used in this project. 

## Analysis

## Conclusion

