library(extRemes)
library(tidyverse)

# number of monthly samples taken
nMonths <- 60
# number of lightbulb lifespans sampled each month
nLB <- 100

# 60 samples of size 100 
monthlySamps <- tibble(map(1:nMonths, ~round(rexp(nLB, rate=0.08), 3)))

# Take maximum from each samples, store in tibble
monthlyMaxima <- map_dbl(monthlySamps, ~max(.))

# Fit both a GEV and Gumbel to monthly max lifespans
maximaFit <- fevd(monthlyMaxima, span = 5, type="GEV", units = "thousands of hours", period.basis = "month")
gumbelFit <- fevd(monthlyMaxima, span = 5, type="Gumbel", units = "thousands of hours", period.basis = "month")

# print parameter estimates and 95% CI
ci(maximaFit, type="parameter", verbose=TRUE)

# density and qq plots 
plot(maximaFit, type="density", main="")
plot(maximaFit, type="qq", main="")





