#!/bin/bash
#PBS -l nodes=1:ppn=1,mem=2gb
#PBS -q default
#PBS -j oe
#PBS trimmomatic(RNAseq)
#PBS -M mmsalaz2@illinois.edu
#PBS -m be
#----------------------------------------------------------------------------#
module load java/1.8.0_65
module load trimmomatic/0.36
#----------------------------------------------------------------------------#
cd /home/a-m/mmsalaz2/trimming/

java -jar /home/apps/trimmomatic/trimmomatic-0.36/trimmomatic-0.36.jar PE \
-threads 2 -phred33 \
-trimlog AX2331_GTTTCGGA_L001_R1_001.trimlog.txt \ AX2331_GTTTCGGA_L001_R2_001.trimlog.txt \
~/rawdata/AX2331_GTTTCGGA_L001_R1_001.fastq \
~/rawdata/AX2331_GTTTCGGA_L001_R2_001.fastq \
~/trimming/AX2331_GTTTCGGA_L001_R1_001(PairedOutput).trimmed.fastq \
~/trimming/AX2331_GTTTCGGA_L001_R1_001(UnpairedOutput).trimmed.fastq \
~/trimming/AX2331_GTTTCGGA_L001_R2_001(PairedOutput).trimmed.fastq \
~/trimming/AX2331_GTTTCGGA_L001_R2_001(UnpairedOutput).trimmed.fastq \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10