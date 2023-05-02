library("TreeSimGM")
library("ape")
source("346-final-project/lib/constants.R")


set.seed(4200)

#shift strength > 1 = longer wait times
#< 1 = shorter wait times

# sim 1
sim1 <- sim.taxa(numbsim = SIM_COUNT, n = LIVING_TIPS, m = TOTAL_BRANCHES,
    waitsp = WAIT_SP, waitext = TAXA_WAIT_EX,
    shiftext = list(prob = 0.6, strength = "runif(0.7, 0.9)"))
windows(); plot(sim1[[3]], main = "60% Probability of Strong Extinction Shift [0.7-0.9]",
    cex.lab = 0.1, show.tip.label = FALSE, use.edge.length = TRUE)

#sim 2
sim2 <- sim.taxa(numbsim = SIM_COUNT, n = LIVING_TIPS, m = TOTAL_BRANCHES,
    waitsp = WAIT_SP, waitext = TAXA_WAIT_EX,
    shiftext = list(prob = 0.6, strength = "runif(0.7, 0.9)"),
    shiftsp = list(prob = 0.3, strength = "runif(1.0, 1.5)"))
windows(); plot.phylo(sim2[[3]], main = "Simulation 1 Extinction Shifts with Slow Speciation Shift",
    cex.lab = 0.1, show.tip.label = FALSE, use.edge.length = TRUE)

#sim 3
sim3 <- sim.taxa(numbsim = SIM_COUNT, n = LIVING_TIPS, m = TOTAL_BRANCHES,
    waitsp = WAIT_SP, waitext = TAXA_WAIT_EX,
    shiftext = list(prob = 0.05, strength = "runif(0.7, 0.9)"),
    shiftsp = list(prob = 0.6, strength = "runif(1.0, 1.5)"))
windows(); plot.phylo(sim3[[3]], main = "Low Probability of High Extinction",
    cex.lab = 0.1, show.tip.label = FALSE, use.edge.length = TRUE)

t1 <- sim3[[1]]
print(t1$shifted.sp.living)