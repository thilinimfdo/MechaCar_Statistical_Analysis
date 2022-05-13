# MechaCar_Statistical_Analysis

The objective of this analysis to understand the production data.

## Linear Regression to Predict MPG

![LM Summary](https://github.com/thilinimfdo/MechaCar_Statistical_Analysis/blob/main/images/summary_lm_mpg.png)

Based on the multiple linear regression, we can see that two varialbels, vehicle_length and ground_clearance have a significant impact towards MPG. The Linear regression have a non-zero slope with significant coefficients. The multiple linear regression can explain the 71% of the variance of the MPG (based on the R Squared value) and we could say that it is quite effective.

## Summary Statistics on Suspension Coils

![Total Summary](https://github.com/thilinimfdo/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png)

![LOT Summary](https://github.com/thilinimfdo/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. And, only LOT3 has a variance above the threshold hence should reconsider manufacturing in that lot.

## T-Tests on Suspension Coils

Using the t-test, we found that none of the individual LOTS have statistically significant difference compared to the population PSI hence our null hypothesis is correct.

## Study Design: MechaCar vs Competition

MPG is probably a better metric to compare different Models to MechaCar.
Our null hypothesis would be that MechaCar MPG is same as other model.
We can run ttest to compare mean MPG of MechaCars and other Models.
We can collect the same data. For MechaCar it shows gound clearance
and vehicle length are also significant. so it might be a good idea 
specicially collect them as well.
