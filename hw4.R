# Make a plot that demonstrates that a Poisson 
# distribution is a good approximation of a binomial 
# distribution when n >> 0 and p << 1. To do this, 
# choose an appropriate set of n and p values, like slide 
# 51 of Ppt180919. (But note that both distributions in 
# this assignment are discrete distributions.) 
# Make a single file that contains: all the 'code' you used for 
# this (it is fine to copy all the related from the console); 
# the plot you made as a pasted picture (5 points); including 
# a legend + plot title + labeled axes that were inserted into
# your graphic using R (2 points); and an accompanying text 
# explanation of why this plot demonstrates that a Poisson 
# distribution is a good approximation of a binomial distribution
# when n >> 0 and p << 1. Make the explanation understandable to 
# people who only see your plot and explanation - assume that those
# people do not see your R scripts (3 points).




##Here is our binomial distribution

x <- 0:250 #number of occurances
binom.dist <- dbinom(x, 250, 0.01) #n = 250; p=0.01
plot(x, binom.dist, type = 'h',
     xlim = c(0,10), ylim = c(0,(max(binom.dist)+.1)),
     ylab = "Probability", xlab = "# of Occurance",
     main = "Binomial and Poisson Approximation"
     )

##Here is our poisson distribution
lam.pois = 250*.01 #lambda = prob*occurances
points(x,
       dpois(x,lambda = lam.pois),
       type='l',col='red',lwd=3.5
       )

legend(x = 5, y=.3 , legend=c("Binomial Dist", "Poisson Dist."),
       col=c("black", "red"), lty=1, lw = 2, cex=0.8)
