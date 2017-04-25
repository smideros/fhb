#!/bin/bash
#PBS -l nodes=1:ppn=1,mem=2gb
#PBS -q default
#PBS -j oe
#PBS trimmomatic_SE
#PBS -M mmsalaz2@illinois.edu
#PBS -m be
#----------------------------------------------------------------------------#
module load java/1.8.0_65
module load trimmomatic/0.36
#----------------------------------------------------------------------------#
cd /home/a-m/mmsalaz2/trimming/
java -jar /home/apps/trimmomatic/trimmomatic-0.36/trimmomatic-0.36.jar SE \
-threads 2 -phred33 \ 
~/rawdata/AX2331_GTTTCGGA_L001_R1_001.fastq \
~/trimming/AX2331_GTTTCGGA_L001_R1_001_.trimmed.fastq \
ILLUMINACLIP:/home/a-m/mmsalaz2/trimming/TruSeq3-SE.fa:2:30:10