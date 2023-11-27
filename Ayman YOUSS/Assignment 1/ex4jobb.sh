#!/bin/bash


#SBATCH --job-name=ex4b_job
#SBATCH --output=ex4b_output.txt
#SBATCH --dependency=afterok:5844140

python ex4.py
