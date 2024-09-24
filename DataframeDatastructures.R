# Create a data frame
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame


Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame
summary(Data_Frame)


Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame
summary(Data_Frame)


Data_Frame[1]
Data_Frame[["Training"]]
Data_Frame$Training



# Add a new row
New_row_DF <- rbind(Data_Frame, c("Strength", 110, 110))
# Print the new row
New_row_DF
New_col_DF <- cbind(Data_Frame, Steps = c(1000, 6000, 2000))
# Print the new column
New_col_DF
Data_Frame_New <- Data_Frame[-c(1), -c(1)]
# Print the new data frame
Data_Frame_New

