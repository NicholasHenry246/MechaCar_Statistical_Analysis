# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![linear_regression](Resources/linear_regression.png)

![summary_linear_regression](Resources/summary_linear_regression.png)

Since the variance of a non random variable is zero then the AWD variable provides a non random amount of variance to the mpg data set.
The slope of the linear model is not considered to be zero. Since the p-value is less than, the 5% confidence interval.


## Summary Statistics on Suspension Coils
![total_summary](Resources/total_summary.png)
![lot_summary](Resources/lot_summary.png)

The variance of the pound per square inch must not exceen 100 pounds. As a group, the variance of the PSI falls below this requirement at 62.29. However, when investigated by the lots, lot 3 shows a significantly higher variance of 170.29. Therefore, the design specifications only meet the requirements for lots 1 and 2. 

## T-Tests on Suspension Coils
![suspension_coil_ttest](Resources/suspension_coil_ttest.png)

We can summarize the results of the t-test by considering the following hypotheses.

H0 : The true mean is equal to 1498.78

Ha : The true mean is not equal to 1498.78

Using a 95% confidence interval we accept the null hypothesis since the p-value is greater that 0.05.

![lot123_ttest](Resources/lot123_ttest.png)

In examining the means of Lots 1,2 and 3, we determine that only lot 2 can be accepted since the mean falls withing the 95% confidence interval and the p-value is below 0.05. 

Deliverable 4: Design a Study Comparing the MechaCar to the Competition (20 points)
Deliverable 4 Instructions
Using your knowledge of R, design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

Follow the instructions below to complete Deliverable 4.

## Study Design: MechaCar vs Competition.
To compare MechaCar to the competition as study can be done to determine the durability of the brakes. the metrics to be tested would be:

    - Maintenance Cost of brakes
    - Miles traveled per brake service
    - Time to completely stop depending on speed
    - Distance to completely stop depending on speed
    - Highway vs City brake life.

Data on the composition of the brakes can be used to determine how long they last on mecha cars vs the competition. The hypothesis could possibly be:

    H1: Brakes need to be changed every 10,000 miles.
    H2: Brakes need to be changed every 5,000 miles.