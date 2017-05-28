#!/bin/bash

#SBATCH -J Rjob
#SBATCH -o out.stdout
#SBATCH -n 1
#SBATCH -p normal
#SBATCH -t 00:10:00
#SBATCH -N 1

module load Rstats
R CMD BATCH serial.r

