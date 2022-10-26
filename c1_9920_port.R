rm(list=ls())

c<-5
#Constant = 5
constant<-10
constant+c
n<-100
#Sample Size = 100
#100 Numbers from Normal Distribution

rnorm(n)
#Use Help ex. type rnorm, important to pay attention to the "Usage" part of the Help page
#the Usage helps you put the Arguments into the Correct Syntax

x <- rnorm(n)
#Now X is defined as the random 100 numbers
y<-rnorm(n, mean=2, sd=10)
#plot x & y

plot(density(x))
plot(density(y))


#Help shows the USAGE and the meaning of the Arguments
summary(x)
sd(x)

summary(y)
sd(y)


#Defining Linear Equations (ex below) is very important bc we're gonna be working with them a lot
z<-3+2*y+x

summary(z)
sd(z)


#covariance the dependence between these variables, also correlation, both are a measures of linear dependence
cov(z,x)
cor(z,x)
#Positive Corellation
#We defined them as positively correlated
#Solely relying on correlation isn't the best thing to do

cov(z,y)
cor(z,y)

cor(y,x)




##### How to work with datasets:

dataname <- read.csv(file.choose(),header = FALSE)
summary(dataname)

