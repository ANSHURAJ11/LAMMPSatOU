#!/usr/bin/bash

mkdir -p software
cd software
rm -rf lammps-cms
module load intel/2023b
module load git/2.42.0-GCCcore-13.2.0
git clone -b stable https://github.com/lammps/lammps.git lammps-cms
cd lammps-cms/src
make yes-manybody
make yes-extra-compute
make yes-mc
make yes-misc
make yes-granular
make mpi