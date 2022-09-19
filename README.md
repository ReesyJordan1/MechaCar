# MechaCar

Summary Statistics on Suspension Coils
The manufacturing data for all lots (Figure 1 below) shows that the suspension coil variance is 62.29356, which is below the limit of 100 pounds per square inch.
 

However, the per-lot breakdown of the data shows Lot3 has a suspension coil variance of 170.2861224, which is above the limit of 100 pounds per square inch. Lot 1 (0.9897433) and Lot 2 (7.4693878) are within the variance limit.
 
T-Tests on Suspension Coils
Using our knowledge of R, we performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch
 

T-test for lot 1 vs. pop. mean of 1500 PSI - no statistical difference.
 

T-test for lot 2 vs. pop. mean of 1500 PSI - no statistical difference.
 

T-test for lot 3 vs. pop. mean of 1500 PSI - yes, a statistical difference.
 

Deliverable 4: Design a Study Comparing the MechaCar to the Competition 
MechaCar vs Competition:
Using our knowledge of R, we designed a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.
Description:
•	What metric or metrics will be tested?
o	Overall Safety Rating: Safety Ratings are available at https://www.nhtsa.gov/ratings. The ‘overall’ category is made up of various sub-categories like: Frontal Crash, Side Crash, Rollover, etc.; but we just need a categorical ‘overall safety rating’ (e.g. A, B, C, D, E, and F)
o	Vehicle Weight: We need the vehicle weight for all current cars. This can be converted into ‘buckets’ or categories. For example, for cars weighing 0.5 - 2.0 tons (e.g. 1000 - 4000 pounds), we would need twelve 250 pound weight ‘categories’.
•	What is the null hypothesis or alternative hypothesis?
o	Null Hypothesis: “Heavier cars are no safer than lighter cars”
o	Alternative Hypothesis: “Overall Safety Rating increases by one letter grade for each increasing weight” category of 250 pounds.
•	What statistical test would will be used to test the hypothesis? And why?
o	Chi-Squared Test: This test can be used to determine if there is a difference in categorical frequencies between groups. For example: “How many vehicles in the 2000-2250 pound category have a safety rating of B?” vs. “How many vehicles in the 2250-2500 pound category have a safety rating of B?”
o	If the p-value of our Chi-Squared Test is below 0.05, then we can reject our Null Hypothesis, and we will know that increasing vehicle weight also increases overall safety rating.
•	What data is needed to run the statistical test?
o	Vehicle Weight data for all current vehicle models (including the MechaCar)
o	Crash Test Results converted into “Overall Safety Rating for all current vehicle models (including the MechaCar)
o	Verify Pre-conditions for Chi-Squared Test
a.	Each subject within a group contributes to only one frequency. In other words, the sum of all frequencies equals the total number of subjects in a dataset.
b.	Each unique value has an equal probability of being observed.
c.	There is a minimum of five observed instances for every unique value for a 2x2 chi-squared table.
d.	For a larger chi-squared table, there is at least one observation for every unique value and at least 80% of all unique values have five or more observations.
