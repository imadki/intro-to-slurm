#!/bin/bash

#SBATCH --job-name=ex10_job
#SBATCH --output=ex10_output.txt


sinfo --format="%N %t %C %m" | awk '$2 == "idle" {print}'
