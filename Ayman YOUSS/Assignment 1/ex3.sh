#!/bin/bash

#SBATCH --job-name=ex3_job
#SBATCH --output=ex3_output.txt
#SBATCH --array=1-10%2


first_line=true

while IFS=$'\t' read -r task_id sample_name sex; do
    if $first_line; then
        first_line=false
        continue
    fi

    echo "This is array task $task_id, the sample name is $sample_name, and the sex is $sex."
done < config.txt
