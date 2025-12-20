#!/bin/bash

#SBATCH -p bohr-gpu
#SBATCH --chdir=/home/alumno13/lab6
#SBATCH -J Apartado3.4
#SBATCH --output=%u-matirx-gpu.out
#Cargamos el modulo y lo descargamos y entre ellos ponemos las ordenes necesarias con ese modulo
module load anaconda/2025.06

time(
ipython matrix-mult-alumno13.ipynb 
)



module unload anaconda/2025.06


