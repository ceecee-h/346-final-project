# define constants used to generate trees
# use source("local/path/to/constants.R") to use constants in file

SEED <- 4200 # nolint
SIM_COUNT <- 3 # nolint
TREE_AGE <- 5 # nolint

# ---- rate constants

# relatively high speciation, quirk of TreeSimGM
# but if speciation is too weak, no tree will be generated
# exponential wait time with speciation rate of 1.5
WAIT_SP <- "rexp(1.5)"

# exponential wait time with extinction rate of 0.4
# this is not reasonable for a mass extinction
WAIT_EX <- "rexp(0.4)"

# ---- sim.taxa constants
# forcing close to 75% extinction, gsa must be set to true (actually maybe not)

# value of n in sim.taxa
LIVING_TIPS <- 5
# value of m in sim.taxa
TOTAL_BRANCHES <- 30

# slightly better results with higher extinction rates for sim.taxas
TAXA_WAIT_EX <- "rexp(0.9)"
