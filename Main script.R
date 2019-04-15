# Create Data
ID <- seq(1,20)
Treat <- rep(c("A", "B", "C", "D"), each = 5)
Data1 <- rnorm(20, 5.6)
Data2 <- seq(103.64, 70.02, length.out = 20)
Data3 <- rnorm(20, 26.7)

# Create data frame
AllData <- data.frame(ID = ID, Treatment = Treat, Growth = Data1, Water = Data2, Temperature = Data3)

  
# Carry out statistics
Test1 <- anova()