df = read.csv('MechaCar_mpg.csv', header=T)

library(dplyr)

lm_model = lm(mpg ~ AWD + vehicle_length + vehicle_weight + spoiler_angle + ground_clearance, data=df)

summary(lm_model)

#non random = statistically significant
#slope is significant with none zero coefficient values
#R squares is 0.71 whih explains 71% of the data variabiliyt.

df.suspension = read.csv('Suspension_Coil.csv', header=T)

Mean=mean(df.suspension$PSI)
Median=median(df.suspension$PSI)
Variance=var(df.suspension$PSI)
SD=sd(df.suspension$PSI)

total_summary = data.frame(Mean, Median, Variance, SD)

lot_summary <- df.suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),  .groups = 'keep')


#calculating the PSI difference

df.suspension.lot1 = subset(df.suspension, Manufacturing_Lot == 'Lot1')
df.suspension.lot2 = subset(df.suspension, Manufacturing_Lot == 'Lot2')
df.suspension.lot3 = subset(df.suspension, Manufacturing_Lot == 'Lot3')

t.test(log10(df.suspension$PSI), log10(df.suspension.lot1$PSI))

t.test(log10(df.suspension$PSI), log10(df.suspension.lot2$PSI))

t.test(log10(df.suspension$PSI), log10(df.suspension.lot3$PSI))

## Study Design

#MPG is probably a better metric to compare different Models to MechaCar.
#Our null hypothesis would be that MechaCar MPG is same as other model.
#We can run ttest to compare mean MPG of MechaCars and other Models.
#We can collect the same data. For MechaCar it shows gound clearance
#and vehicle length are also significant. so it might be a good idea 
#specicially collect them as well.

