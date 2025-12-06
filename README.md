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

## Visualization 
Before trying to see the results of the linear regression line, it is critical to see the relationship each
of the variables have with the Poverty rate. Since the majority of the data was collect based of annual or total
percentages, applying a log transformation will provided to be useless. Even though the majority of the predictors
for the potential linear regression model are all skewed to the left, since there might be countries like first world
countries like Finland, United States and others that have for example a high GDP but a relativity low Poverty
Rate. In this case, they might skew the data not because they are unique data. Instead because a vast amount of
countries typically do not have an incredible amount of GDP in the first but also do not have a high poverty rate as
well. Which is where they become clustered together with those who have low GDP but a high poverty rate, that
results in getting an overall skewed graph. This is why, we intend to apply log transformation to GDP, since the
units when recorded were not based off percentages. Additionally, we will apply a square root transformation to the
dependent Poverty rate in hopes for it can potentially handle the skewness and result in a more normally
distributed graphs.

Based off the histogram of a log-transformed GDP proves that a linear regression is possible, though not in the
way that one may think. By looking at the plots for the predictors, it is possible to assume that a majority of the
variables do not really have much of a correlation to the data itself. Out of all the variables, a log-transformed GDP
is showed to have the strongest correlation since it is currently standing at a -.8210587. Which implies that has
GDP increases, Poverty rate is expected to fall a considerable amount. In the case for the rest, plots of Population
growth, and Education it is quite apparent that they have a moderately strong correlation to Poverty rate. Since
Population Growth is currently standing at a .5846786 correlation, implying as for every percent increased for
population growth the poverty rate is predicted to rise along side of it. While for Education is at a -.4425305, which
is considerably weaker, but it implies as for every percent increase for Education the Poverty is expected to drop
from it. However, in the case for Inflation, Death Rate, and Unemployment they have have from a weak to
extremely weak correlation to Poverty rate since none of them pass -0.20 or +0.20.

## Files
There are multiple RMD files with multiple uses in this project. Our main RMD is Pr of the World.Rmd, which is the file with all the code, as well as the introductions, purpose, data, etc. We also have 11_DataCleaning.Rmd, 12_DataProcessing.Rmd, 13_DataVisualization.Rmd, which are the RMD files that show the data cleaning, data processing, and analysis, respectively. We also have 00_requirements.R, which shows all the libraries that were used in this project. 

## Conclusion
Not only does adding log-transformation to GDP and square rooting not only handles the skewness of the data
themselves, I believe it is safe to say that it almost normalizes it. In the end, the the predictors that ended up being
statistically significant for the transformed model was technicality all of them. However, I believe there is so much
work that can end up being done for this model, especially for the transformed altered life model. Even though the
r^2 showed to be able to cover almost 3/4 of the variance from the data itself. It did end up lacking o certain
aspects, when it came to the residuals vs leverage plots. What should of been the end result was model life alt
should of have been the one with the red line being ideal and potential have it more spread around the zero
standard residual interval.
Additionally, the plots themselves ended causing problems along the way. Since there were too many extreme
data points to remove because that would end up basing the result of this research. Since every last of them were
real data entries, and for all the data sets if for some reason there were no data in their row. It is believe that either
for that year for that country there were no data to be collect or there were some but those who originally collect
the data were not able to enter these data entries.
Instead what did happen, was that the model in its based form could be used either for business application or
even predicting the future Poverty rates for the foreseeable decade. However, what limit our models was lack of
experience since there were probably others ways to handle and tackle certain task and especially when it came
using other means of linear regression models. We used linear regression as a potential stepping stone that could
provide the perfect leverage for some else to either build off our research or even use our research and outcomes
as a means of building a automatic model that can predict Poverty rates with no estimation errors.All what that was
just mention could potential give this research more depth and or even a better way to tackle our question.

