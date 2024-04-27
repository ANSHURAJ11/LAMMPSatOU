#!/bin/bash
#
#SBATCH --job-name=gsfe
#SBATCH --partition=cm3atou
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --output=lmp_gsfe.out
#SBATCH --error=lmp_gsfe.err
#SBATCH --time=12:00:00
#SBATCH --mail-user=youremailaddress@yourinstitution.edu
#SBATCH --mail-type=ALL
#
#################################################

# Defining the executable and scratch directory

cd ${SLURM_SUBMIT_DIR}

module load intel/2022a

# execute lammps
echo "begin lammps"
echo "the job is ${SLURM_JOB_ID}"

rm -f gsfe gsfe_ori

mpirun ~/software/lammps-cms/src/lmp_mpi -in lmp_gsfe.in

echo "lammps out"

