##########################
## plot_random_function.R
##
## Julie Probert
##
## Purpose: 
##  A function that will generate a random
##    sample of normal values, plot a histogram
##    with an overlaid mean on the plot
##    and returns summary statistics about the 
##    generated data. 
##
## Inputs: 
##    numpts  = the number of points to generate, defaults to 50
##    bins    = the number of breakpoints in the hist() function,
##              defaults to 10
##    mu      = mean of normal distribution, defaults to 0
##    sigma   = standard deviation of normal distribution, 
##              defaults to 1
##    seed    = seed for the random number generator, defaults
##              to null -- so random each time, but user 
##              can override the value
##
## Outputs:
##    A list is returned with the following elements: 
##      Random_Sample = the generated random sample
##      Mean_Sample   = the mean of the random sample
##      SD_Sample     = the standard deviation of the random sample


plotRandomNormals <- function(numpts=50, bins=10,
                              mu=0, sigma=1,
                              seed=NULL) {
  set.seed(seed)
  rand_sample <- rnorm(numpts, mean=mu, sd=sigma)
  hist(rnorm(numpts, mean=mu, sd=sigma), breaks=bins+1)
  abline(v = mean(rand_sample), col="blue")
  list(Random_Sample = rand_sample, 
       Mean_Sample = mean(rand_sample), 
       SD_Sample = sd(rand_sample))
}

## Default Values
plotRandomNormals()

## User specified number of points
plotRandomNormals(numpts = 30)

plotRandomNormals(numpts = 1000, bins =200)

plotRandomNormals(numpts=1000, bins=50, mu=63.5, sigma=4.5)

