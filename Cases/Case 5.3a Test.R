
##638 Test HeteroScedasticity

library(lmtest)

library(readxl)
demoHeteroScedasticity <- read_excel("C:/Users/marso/Desktop/demoHeteroScedasticity.xls")


demo<- data.frame(demoHeteroScedasticity)
summary(demo)

Model<- lm(Age~Size, data = demo)
summary(Model)

par(mfrow=c(2,2)) # init 4 charts in 1 panel
plot(Model)


#Now we can verify the Heterroscedasticity through the residuals vs leverage plot.


#The Breusch-Pagan Test

var.func <- lm(Size^2 ~ Age, data = demo)
summary(var.func)

qchisq(.95, df = 1)

