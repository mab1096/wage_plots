rm(list=ls())
wage1 <- read.csv(file.choose(), header=FALSE)
View(wage1)




#i.)

summary(wage1)
wage = wage1$V1
educ = wage1$V2

#Wage of 5.8 isn't very high for an average wage seems pretty low, 5.8 an hour
#Educ years seems about where I'd expect, 12.6 years makes sense

mean(wage)
mean(educ)

plot(wage)
plot(educ)

var(wage)
var(educ)
#13.6 variance of wage means that the data has a higher variability from the mean
#so it's more spread out
#7.67 shows that the Years of Educ is less spread out compared to wage which makes sense because
#A large difference in wage seems much more likely than a large difference in years of Educ
#Even having +15 years of education from the typical sounds very rare while
#People making like ~$10,000 a year compared to someone making 10,000,000 is a lot
#Wage has more variability compared to Educ
#NOT SURE IF I DID THIS RIGHT (For the notes part)

plot(density(wage))
#wage skewed right, and peaks early, Not the same
plot(density(educ))
#Educ skewed left and peaks later makes sense because of the variability between them




#ii.)

rm(list=ls())
fertil2 <- read.csv(file.choose(), header=FALSE)

summary(fertil2)
children <- fertil2$V11

mean(fertil2$V11)
mean(children)

View(fertil2)

#Children with Electricity
mean(fertil2, (V11>=1 & V4==1))

(V11>=1 & V4==1)

fertil2<-subset(fertil2, fertil2[,V4]==1&fertil2[,V11]>1)
sum(fertil2$V11)

tapply(fertil2$V11, INDEX = fertil2$V4, FUN = mean)
tapply(fertil2$V11)
select(fertil2$V11, fertil2$V4)

sad <- c(fertil2$V11==1, fertil2$V4==0)
mean(sad)
View(sad)

tapply(fertil2$V11, INDEX = fertil2$V4, FUN = mean)






###############################################################################






rm(list=ls())
#define sample
n <- 100
X <- runif(n)
u <- rnorm(n)
Y <- 2*X + u

mean(Y)
cor(X,Y)



#I need to do a subset of the variables for the rest of the problems





#SLEEP
sleep75 <- read.csv(file.choose(), header=FALSE)
summary(sleep75)
View(sleep75)
summary(sleep75$V26)
summary(sleep75$V21)

#21= Min slept at night per week
#26= Min worked per week

cov(sleep75$V21, sleep75$V26)
cor(sleep75$V21, sleep75$V26)
#Shows that it's NEGATIVE, there's a negative linear dependence between these two variables, 
#because it's Negative I think they aren't linearly dependent, and high values of V21 won't lead to
#High values of V26 because they're negatively dependent
# The correl corrects the Covariances unit dependence, but it shows the same general point that
#they're negatively linearly dependent







##########################################################
rm(list=ls())
techexports <- read.csv(file.choose(), header=TRUE)
View(techexports)
mean(techexports$exp18)
sd(techexports$exp18)
#mean = 55,838,946,046 (55 Billion Current USD)
#SD = 74,085,900,611 (74 Billion Current USD)
#These show that on avg these countries spend 55 bill
#And the SD shows how spread out the data is and 74 billion is the standard deviations from the Mean that
# each countries tech exports will be in



#variable: tech exports from each country on list





###################################################


rm(list=ls())
space_imp <- read.csv(file.choose(), header=TRUE)
View(space_imp)
#Spacecraft imports to US

mean(space_imp$import_usd, na.rm = TRUE)
#Mean 106,038,782 avg imports per year by US
#SD 98,538,947 from the mean of the US's spending on imports of Spacecraft/etc. per year
sd(space_imp$import_usd, na.rm = TRUE)







###################################################

#####
fertil2 <- mutate(fertil2, electrickid = ifelse(fertil2$V5==1 & fertil2$children,1,0))

train<- mutate(train, femalethirdclass = ifelse(train$Pclass==3 & train$Sex=="female",1,0))




######
# Y = 2X + u. Where X is uniformly distributed, and u is normally distributed 
# with zero mean and variance equal to one. n = 100.
plot

