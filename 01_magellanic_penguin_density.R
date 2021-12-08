# Magellanic penguin density estimates in Observatorio and Goffré Islands

rm(list=ls())

# loading density estimates function 
source("http://math.hws.edu/pcqm/pcqm.txt")

# loading data

# Goffré Island
data_goffre <- read.csv("data_goffre.csv",header=T,sep=";",dec=".")

#Observatorio island, data from each cover
data_obs_junco_np <- read.csv("data_observatorio_junco_np.csv",header=T,sep=";",dec=".")
data_obs_tussock_np <- read.csv("data_observatorio_tussock_np.csv",header=T,sep=";",dec=".")
data_obs_praire_np <- read.csv("data_observatorio_praire_np.csv",header=T,sep=";",dec=".")

# Density estimates

dens_goffre <- density.est(data_goffre, method = "pollard", conf.level = 0.95)
dens_goffre

# Observatorio non parametric estimation (Patil et al. 1982)

dens_tussock_np <- np.density.est(data_obs_tussock_np)
dens_tussock_np

dens_junco_np <- np.density.est(data_obs_junco_np)
dens_junco_np

dens_praire_np <- np.density.est(data_obs_praire_np)
dens_praire_np

