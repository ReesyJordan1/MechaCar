# MechaCar

## Linear Regression to Predict MPG
I designed a linear model that predicts the mpg of MechaCar prototypes using vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD as indpendent variables. Below is a summary of my results and a screenshot of the output. <br>
<kbd> <img src='https://github.com/npantfoerder/mechaCar-statistical-analysis/blob/master/Images/linear_regression.png' width=400> </kbd>
- Vehichle_length and ground_clearance were the two variables that provided a non-random amount of variance to the mpg values in the dataset.
- The slope of the linear model is not considered to be zero. This is because the p-value of the linear model was much smaller than the significance level, providing sufficient statistical evidence that the null hypothesis is not true.
- The r-squared value is 0.715, meaning that there is a 71.5% chance that future data points will fit this model. Therefore the linear model does predict mpg of MechaCar prototypes effectively. 

## Summary Statistics on Suspension Coils
I created two data frames with summary statistics about the suspension coil's PSI across all manufacturing lots and for each lot individually. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data meets this design specification for all manufacturing lots in total. Individually, lots 1 and 2 meet the specification, but lot 3 does not. Lots 1 and 2 had variances of 1.15 and 10.13. However, lot 3 has a variance of 220.01, which exceeds the 100 pounds per square inch specification. Below is a screenshot of the summary statistics data frames for all manufacturing lots and for each lot individually. <br>
<img src='https://github.com/npantfoerder/mechaCar-statistical-analysis/blob/master/Images/total_summary.png' width=375> 
<br>
<img src='https://github.com/npantfoerder/mechaCar-statistical-analysis/blob/master/Images/lot_summary.png' width=500>

## T-Tests on Suspension Coils
I performed t-tests in order to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. My null hypothesis was that there is no statistical difference and my alternate hypothesis was that there is a statistical difference. The p-value for all lots was 0.51, meaning that there is not enough statistical evidence to reject the null hypothesis. Therefore the mean PSI of all manufacturing lots is not statistically different from the population mean. The p-values for lot 1, lot 2, and lot 3 were 0.9, 0.35, and 0.64 respectively. Hence, the mean PSIs of each individual lot are also not statistically different from the population mean of 1,500 PSI. <br>
Screenshot of the t-test for all manufacturing lots: <br>
<kbd> <img src='https://github.com/npantfoerder/mechaCar-statistical-analysis/blob/master/Images/t_test.png' width=400> </kbd> <br>
Screenshot of the t-test for lot 1: <br>
<kbd> <img src='https://github.com/npantfoerder/mechaCar-statistical-analysis/blob/master/Images/t_test1.png' width=450> </kbd> <br>
Screenshot of the t-test for lot 2: <br>
<kbd> <img src='https://github.com/npantfoerder/mechaCar-statistical-analysis/blob/master/Images/t_test2.png' width=450> </kbd> <br>
Screenshot of the t-test for lot 3: <br>
<kbd> <img src='https://github.com/npantfoerder/mechaCar-statistical-analysis/blob/master/Images/t_test3.png' width=450> </kbd>

## Study Design: MechaCar vs Competition
I would like to perform a statistical study to determine if we predict values for maintenance cost using a linear model and values from cost. Analyzing the relationship of cost and maintenance cost would support the decision of choosing the best ratio. This would quantify how the vehicle performs against the competition by providing potential profit margins for the company. I would test the r-squared value to determine the likelihood that future data points will fit the linear model. My null hypothesis is that the slope of the linear model is zero. My alternative hypothesis is that the slope of the linear model is not zero. I would use simple linear regression to test the hypothesis because it will provide a meaningful model to be used in finding the optimal cost for the MechaCar while minimizing maintenance cost to increase consumer interest. The data needed to perform this study would be the cost and maintenance cost of MechaCar prototypes.

## Design a Study Comparing the MechaCar to the Competition 


MechaCar vs Competition:


I designed a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.


Description:


What metric or metrics will be tested?


- Overall Safety Rating: Safety Ratings are available at https://www.nhtsa.gov/ratings. The ‘overall’ category is made up of various sub-categories like: Frontal Crash, Side Crash, Rollover, etc.; but we just need a categorical ‘overall safety rating’ (e.g. A, B, C, D, E, and F)
- Vehicle Weight: We need the vehicle weight for all current cars. This can be converted into ‘buckets’ or categories. For example, for cars weighing 0.5 - 2.0 tons (e.g. 1000 - 4000 pounds), we would need twelve 250 pound weight ‘categories’.


What is the null hypothesis or alternative hypothesis?


- Null Hypothesis: “Heavier cars are no safer than lighter cars”
- Alternative Hypothesis: “Overall Safety Rating increases by one letter grade for each increasing weight” category of 250 pounds.


What statistical test would will be used to test the hypothesis? And why?


- Chi-Squared Test: This test can be used to determine if there is a difference in categorical frequencies between groups. For example: “How many vehicles in the 2000-2250 pound category have a safety rating of B?” vs. “How many vehicles in the 2250-2500 pound category have a safety rating of B?”
- If the p-value of our Chi-Squared Test is below 0.05, then we can reject our Null Hypothesis, and we will know that increasing vehicle weight also increases overall safety rating.


What data is needed to run the statistical test?


- Vehicle Weight data for all current vehicle models (including the MechaCar)
- Crash Test Results converted into “Overall Safety Rating for all current vehicle models (including the MechaCar)
- Verify Pre-conditions for Chi-Squared Test
1. Each subject within a group contributes to only one frequency. In other words, the sum of all frequencies equals the total number of subjects in a dataset.
2. Each unique value has an equal probability of being observed.
3. There is a minimum of five observed instances for every unique value for a 2x2 chi-squared table.
4. For a larger chi-squared table, there is at least one observation for every unique value and at least 80% of all unique values have five or more observations.
 
 

