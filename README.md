# An Exploration of Extreme Value Analysis with an Applied Example of the Block Maxima Approach

This project is in partial fulfillment of the requirements for the M.S. degree in Statistics at Oregon State University.  
A theoretical foundation for extreme value analysis is provided as well as a demonstrative example of the block maxima approach, a main facet of EVA. The example consists of a light bulb manufacturer interested in understanding the particularly large lifespans of their light bulbs. The block maxima approach is applied to this manufacturers monthly sample maximum light bulb lifespans, with which a generalized extreme value distribution is fit.   

Files provided in this repository are  
 - Simulate-fit-plots.R, the main R code used for the block maxima example. Includes code to create simulated data, fit multiple extreme value distributions to the data, and plot results.  
 - monthlySamps.csv, a 100x60 dataset of the simulated data used. In the context of the example, these are the light bulb lifespans. 
 - monthlyMaxima.csv, a 1x60 dataset of block maximum values. In the context of the example, these are the monthly sample maximum lifespans.
