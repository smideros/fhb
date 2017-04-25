#!/bin/bash
#PBS -l nodes=1:ppn=2,mem=2gb
#PBS -q default
#PBS -j oe
#----------------------------------------------------------------------------#
module load java/1.8.0_65
module load trimmomatic/0.36
#----------------------------------------------------------------------------#
cd ~/trimming/
java -jar /home/apps/trimmomatic/trimmomatic-0.36/trimmomatic-0.36.jar SE \
-threads 2 -phred33 ~/rawdata/AX2331_GTTTCGGA_L001_R1_001.fastq \
~/trimming/AX2331_GTTTCGGA_L001_R1_001.trimmed.fastq \
ILLUMINACLIP:~/trimming/TruSeq3-SE.fa:2:30:10