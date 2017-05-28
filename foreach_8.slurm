#!/bin/bash

#SBATCH -J Rjob
#SBATCH -o out.stdout
#SBATCH -N 1
#SBATCH -p normal
#SBATCH -t 00:10:00
#SBATCH -n 16

export MC_CORES = 8

module load Rstats
R CMD BATCH foreach_rf_8.r

