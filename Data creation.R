# Create Data
ID <- seq(1,20)
Treat <- rep(c("A", "B", "C", "D", "E"), each = 20)
Data1 <- rnorm(100, 5.6)
Data2 <- rep(seq(103.64, 70.02, length.out = 20), 5)
Data3 <- rnorm(100, 26.7)

# This a minor change by Ed

# Create data frame
AllData <- data.frame(ID = ID, Treatment = Treat, Growth = Data1, Water = Data2, Temperature = Data3)

# Output data to same directory as this script
Dir <- dirname(rstudioapi::getSourceEditorContext()$path) # NOTE: will error if run outside R studio
file_out <- paste(Dir, "/Data_1.csv", sep = "")
#file_out <- paste(Dir, "/Data_", length(list.files(Dir)), ".csv", sep = "")
write.csv(AllData, file = file_out)


# plot 
plot(Growth ~ Water, AllData)
