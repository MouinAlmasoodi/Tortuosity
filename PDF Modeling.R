#Data loading

library(readxl)
data <- read_excel("E:/MarcellusVolume/WD/MP_MTry_PotentialFoam_StreamFunction_REV/Tortuosity_Results.xlsx")
View(data)
summary(data)

# Attaching Necessary Libraries 
attach(data)
library(ggplot2)
library(purrr)
library(tidyr)
library(magrittr)
library(MASS)
library(fitdistrplus) 


# Building Histogram for Tortuosity----------------------------------

h<-hist(data$`Tortuosity`, breaks=30, 
        main="Distribution of Tortuosity",
        ylab="Frequency of Tortuosity",
        xlab="Tortuosity",
        border="red",
        col="gray",
        xlim=c(1.2,4),
        prob=FALSE,
        cex.axis=1,
        cex.lab=1.2,
        cex.main=1.6)	
axis(side=1, at=seq(1.2,3, 4), labels=seq(1.2,3,4), tick = TRUE)

summary(data$`Tortuosity`)

#Modeling PDF distribution:


fit_lnorm <- fitdist(data$`Tortuosity`, "lnorm")
fit_w <- fitdist(data$`Tortuosity`, "weibull")
fit_g <- fitdist(data$`Tortuosity`, "gamma")

summary(fit_lnorm)

#Plot Results from log Normal, Weibull, and Gamma:


denscomp(list(fit_lnorm, fit_w, fit_g), legendtext = plot.legend,
         main="Turtuosity Histogram and Theortical Densities",
         ylab="Density",
         xlab="Tortuosity",
         cex.axis=1.4,
         cex.lab=1.4,
         cex.main=1.4,
         xlim=c(1.2,4),
         cex.axis=1.4,
         cex.lab=1.4,
         cex.main=1.4,
         lwd=2)

#Add Legend

plot.legend <- legend (3, 0.8, legend=c("lognormal", "Weibull", "Gamma"), 
                       col=c("red", "green","blue"), lty=c(1,2,3), lwd=3, cex=1.2,
                       box.lty=1, box.lwd=1, box.col="black")


