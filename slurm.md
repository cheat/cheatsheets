# To submit a new job:
sbatch job.sh

# To list all jobs for a user:
squeue -u <user>

# To cancel a job by id or name:
scancel <job-id>
scancel --name <job-name>

# To list all information for a job:
scontrol show jobid -dd <job-id>

# To status info for currently running job:
sstat --format=AveCPU,AvePages,AveRSS,AveVMSize,JobID -j <job-id> --allsteps
