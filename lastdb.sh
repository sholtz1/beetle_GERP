#!/bin/bash


#SBATCH --account=beetlegenes
#SBATCH --time=120:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=sholtz1@uwyo.edu
#SBATCH --job-name=lastdb


ref=./data/sequences/ref/Tribolium_ref_2020.fna
ref_name=$( basename $ref )
db_prefix=./analyses/last/lastdb/${ref_name}-MAM4
db_path=/project/beetlegenes/sholtz1/GERP/GERPsoftware/last/src

mkdir -p ./analyses/last/lastdb/
$db_path/lastdb -P0 -uMAM4 -R01 $db_prefix $ref
