#!/bin/bash

#SBATCH -p bohr-gpu
#SBATCH --chdir=/home/alumno13/lab6
#SBATCH -J Apartado3.3
#SBATCH --output=%u-pi-gpu.out
#Cargamos el modulo y lo descargamos y entre ellos ponemos las ordenes necesarias con ese modulo
module load anaconda/2025.06

echo Ejecutando el notebook con $1 elementos

time(
ipython pi-gpu-alumno13.ipynb $1 
)


echo Ejecutando el notebook con $2 elementos

time(
ipython pi-gpu-alumno13.ipynb $2 
)

module unload anaconda/2025.06

