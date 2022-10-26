#1.)
wage1 <- read.csv(file.choose(), header=FALSE)
summary(wage1)
wage = wage1$V1
educ = wage1$V2

mean(wage)
mean(educ)
var(wage)
var(educ)

plot(density(wage))
plot(density(educ))


###############################################################################





#2.)

rm(list=ls())
fertil2 <- read.csv(file.choose(), header=FALSE)

summary(fertil2)
mean(fertil2$V11)

with_electricity <- c(fertil2$V11>=1, fertil2$V4==1)
no_electricity <- c(fertil2$V11>=1, fertil2$V4==0)
mean(with_electricity)
mean(no_electricity)

###############################################################################

#3.)

rm(list=ls())
n <- 100
X <- runif(n)
u <- rnorm(n)
Y <- 2*X + u

mean(Y)
cor(X,Y)





###############################################################################
#4.)

rm(list = ls())
sleep75 <- read.csv(file.choose(), header=FALSE)
summary(sleep75)
summary(sleep75$V26)
summary(sleep75$V21)

cov(sleep75$V21, sleep75$V26)
cor(sleep75$V21, sleep75$V26)

###############################################################################
#BONUS 1.)

rm(list=ls())
techexports <- read.csv(file.choose(), header=TRUE)

mean(techexports$exp18)
sd(techexports$exp18)

###############################################################################
#BONUS 2.)

rm(list=ls())
space_imp <- read.csv(file.choose(), header=TRUE)

mean(space_imp$import_usd, na.rm = TRUE)
sd(space_imp$import_usd, na.rm = TRUE)
