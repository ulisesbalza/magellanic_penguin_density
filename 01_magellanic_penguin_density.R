# Magellanic penguin density estimates in Observatorio and Goffré Islands

rm(list=ls())

# loading density estimates function 
source("http://math.hws.edu/pcqm/pcqm.txt")

# loading data

# Goffré Island 2020
data_goffre <- read.csv("data_goffre.csv",header=T,sep=";",dec=".")
# Observatorio Island 2020
data_obs_np <- read.csv("data_observatorio_np.csv",header=T,sep=";",dec=".")

# Density estimates

#Goffré
dens_goffre <- density.est(data_goffre, method = "pollard", conf.level = 0.95)
dens_goffre

# Observatorio non parametric estimation (Patil et al. 1982)
dens_observatorio_np <- np.density.est(data_obs_np)
dens_observatorio_np


# Scaling up into abundance
# Observatorio island area: 413.30 ha
# Goffré island area: 31.22 ha (for details see Balza et al in review)

# Observatorio Island abundance
# mean
obs_mean <- 80.4 * 413.3
# 95% CI
obs_2.5 <-  42.4 * 413.3
obs_97.5 <- 118.5 * 413.3

# Goffré Island abundance
# mean
goffre_mean <-  95.0 * 31.22
# 95% CI
goffre_2.5 <- 72.4 * 31.22
goffre_97.5 <- 125.0 * 31.22


# See the results in a table

tab <- matrix(c(obs_mean, obs_2.5, obs_97.5, goffre_mean, goffre_2.5, goffre_97.5), ncol=3, byrow=TRUE)
colnames(tab) <- c('Mean','2.5%','97.5%')
rownames(tab) <- c('Observatorio','Goffré')
tab <- as.table(tab)

tab
