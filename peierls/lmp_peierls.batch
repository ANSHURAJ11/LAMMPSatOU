#!/bin/bash
#
#SBATCH --job-name=peierls
#SBATCH --partition=cm3atou
#SBATCH --output=lmp_peierls.out
#SBATCH --error=lmp_peierls.err
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=12:00:00
#SBATCH --mail-user=youremailaddress@yourinstitution.edu
#SBATCH --mail-type=ALL

# Defining the executable and scratch directory

cd ${SLURM_SUBMIT_DIR}

module load intel/2022a
#/bin/hostname

# execute lammps
echo "begin lammps"
echo "the job is ${SLURM_JOB_ID}"

rm -f strain-stress dump.*

mpirun ~/software/lammps-cms/src/lmp_mpi -in lmp_peierls.in

echo "lammps out"
