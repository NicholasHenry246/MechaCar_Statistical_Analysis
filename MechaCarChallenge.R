library(dplyr)

# Deliverable 1
mecha_mpg_df <- data.frame(read.csv(file="MechaCar_mpg.csv"))

# mecha_mpg_df <- data.frame(mecha_mpg)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance 
   + AWD, data = mecha_mpg_df)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance 
   + AWD, data = mecha_mpg_df))

# Delivrerable 2
suspension_coil <- read.table(file="Suspension_Coil.csv", sep=",", header=T)

total_summary <- suspension_coil %>% 
summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI, na.rm = FALSE), .groups = 'keep') #create summary table

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% 
   summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI, na.rm = FALSE), .groups = 'keep') #create summary table

# Deliverable 3
t.test(suspension_coil$PSI, mu = total_summary$Mean)
#t.test(log10(suspension_coil$PSI),mu=mean(log10(total_summary$Mean))) #compare sample versus population means

Lot_1 = subset(suspension_coil, Manufacturing_Lot == "Lot1")
Lot_2 = subset(suspension_coil, Manufacturing_Lot == "Lot2")
Lot_3 = subset(suspension_coil, Manufacturing_Lot == "Lot3")

t.test(Lot_1$PSI, mu = total_summary$Mean)
t.test(Lot_2$PSI, mu = total_summary$Mean)
t.test(Lot_3$PSI, mu = total_summary$Mean)