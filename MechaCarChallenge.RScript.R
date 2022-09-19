library(tidyverse)

# MPG Analysis
MechaCar_mpg <- read_csv("static/csv/MechaCar_mpg.csv", show_col_types = FALSE)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

# Suspension Coil Analysis
# read in csv
Suspension_Coil <- read_csv("static/csv/Suspension_Coil.csv", show_col_types = FALSE)
# summarize all lots
summarize_coil_data_all <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
# add column "Manufacturing_Lot : TOTAL SUMMARY" for merging all summaries together into one matrix
summarize_coil_data_all <- summarize_coil_data_all %>% add_column(Manufacturing_Lot = "TOTAL SUMMARY", .before = 1) 
# matrix of all lots individually
summarize_coil_data_lots <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
# merge all rows together into one
compound_summary <- rbind(summarize_coil_data_all, summarize_coil_data_lots)
View(compound_summary)

# T-Tests on Suspension Coils - all lots
t.test(Suspension_Coil$PSI, mu=1500)

# T-Tests on Suspension Coils - Lot 1
Lot_1 <- Suspension_Coil[which(Suspension_Coil$Manufacturing_Lot =='Lot1'),]
t.test(Lot_1$PSI, mu=1500)

# T-Tests on Suspension Coils - Lot 2
Lot_2 <- Suspension_Coil[which(Suspension_Coil$Manufacturing_Lot =='Lot2'),]
t.test(Lot_2$PSI, mu=1500)

# T-Tests on Suspension Coils - Lot 3
Lot_3 <- Suspension_Coil[which(Suspension_Coil$Manufacturing_Lot =='Lot3'),]
t.test(Lot_3$PSI, mu=1500)
