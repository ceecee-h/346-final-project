# Libraries ---------------------------------------------------------------
library('TreeSimGM')
#library('ggplot2')
#library('ape')
#setwd('/Users/colin/Documents/UoA/ecol_346/project_code')


# Parameters --------------------------------------------------------------
set.seed(4200)

SIM_COUNT = 3
LIVING_TIPS = 5
TOTAL_BRANCHES = 30
WAIT_SP = 'rexp(1.5)'
TAXA_WAIT_EX = 'rexp(0.4)'

# Simulation 1 ------------------------------------------------------------
sim1 <- sim.taxa(numbsim = SIM_COUNT, n = LIVING_TIPS, m = TOTAL_BRANCHES,
                 waitsp = WAIT_SP, waitext = TAXA_WAIT_EX,
                 shiftext = list(prob = 0.6, strength = "runif(0.7, 0.9)"))
for(i in 1:3) {
  plot(sim1[[i]], main = "60% Probability of Strong Extinction Shift [0.7-0.9]", 
       cex.lab = 0.1, show.tip.label = FALSE, use.edge.length = TRUE)
}

# Simulation 2 ------------------------------------------------------------
sim2 <- sim.taxa(numbsim = SIM_COUNT, n = LIVING_TIPS, m = TOTAL_BRANCHES,
                 waitsp = WAIT_SP, waitext = TAXA_WAIT_EX,
                 shiftext = list(prob = 0.6, strength = "runif(0.7, 0.9)"),
                 shiftsp = list(prob = 0.3, strength = "runif(1.0, 1.5)"))
for(i in 1:3) {
  plot(sim2[[i]], main = "Simulation 1 Extinction Shifts with Slow Speciation Shift", 
       cex.lab = 0.1, show.tip.label = FALSE, use.edge.length = TRUE)
}

# Simulation 3 ------------------------------------------------------------
sim3 <- sim.taxa(numbsim = SIM_COUNT, n = LIVING_TIPS, m = TOTAL_BRANCHES,
                 waitsp = WAIT_SP, waitext = TAXA_WAIT_EX,
                 shiftext = list(prob = 0.05, strength = "runif(0.7, 0.9)"),
                 shiftsp = list(prob = 0.6, strength = "runif(1.0, 1.5)"))

for(i in 1:3) {
  plot(sim3[[i]], main = "Low Probability of High Extinction", 
       cex.lab = 0.1, show.tip.label = FALSE, use.edge.length = TRUE)
}