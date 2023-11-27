#!/bin/bash

#Exercise 1

#SBATCH --cpus-per-task=20 
#SBATCH --array=1-3
#SBATCH --output=ex1output.txt
#SBATCH --nodelist=node03

module unload gcc
module load Python/3.8.2-GCCcore-9.3.0
module load OpenMPI/4.0.3-GCC-9.3.0

echo "Test test"

mpirun -n $SLURM_ARRAY_JOB_ID python squarerootsum.py > ex1output.txt

