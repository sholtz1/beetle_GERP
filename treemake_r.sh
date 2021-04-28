#!/bin/bash

#SBATCH --account=beetlegenes
#SBATCH --time=120:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=sholtz1@uwyo.edu
#SBATCH --job-name=make_tree






module load swset/2018.05
module load gcc/7.3.0
module load r/3.6.1

gff_name=Tribolium_samesource.gff
project_path=/project/beetlegenes/sholtz1/GERP
tree="(((Pogonus_chalceus_genomic,((Tribolium_castaneum,(Harmonia_axyridis_genomic,Aethina_tumida_genomic)Cucujoidea,(Anoplophora_glabripennis_genomic,Leptinotarsa_decemlineata_genomic)Chrysomeloidea_genomic,Dendroctonus_ponderosae_genomic)Cucujiformia,Agrilus_planipennis_genomic)Polyphaga)Coleoptera,Drosophila_melanogaster_genomic)Holometabola);"
Rscript /project/beetlegenes/sholtz1/GERP/gerp/scripts-gerp/estimate_neutral_tree.R ${project_path}/data/sequences/ref/split/ ${project_path}/analyses/last/msa_fasta/ ${project_path}/data/annotations/${gff_name} $tree ${project_path}/analyses/tree/neutral_tree.txt








