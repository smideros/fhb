#!/bin/bash

# ----------------QSUB Parameters----------------- #
#PBS -S /bin/bash
#PBS -q default
#PBS -l nodes=1:ppn=2,mem=2000mb
#PBS -j oe
# ----------------Load Modules-------------------- #
module load java/1.8.0_65
module load trimmomatic/0.36
# ----------------Your Commands------------------- #
cd ~/trimming/
java -jar /home/apps/trimmomatic/trimmomatic-0.36/trimmomatic-0.36.jar PE \
-threads 2 -phred33 \
-trimlog AX2331_GTTTCGGA_L001_R1_001.trimlog.txt \ 
-trimlog AX2331_GTTTCGGA_L001_R2_001.trimlog.txt \
-basein ~/rawdata/AX2331_GTTTCGGA_L001_R1_001.fastq \
~/rawdata/AX2331_GTTTCGGA_L001_R2_001.fastq \
-baseout ~/trimming/AX2331_GTTTCGGA_L001_R1_001.PairedOutput.trimmed.fastq \
~/trimming/AX2331_GTTTCGGA_L001_R1_001.UnpairedOutput.trimmed.fastq \
~/trimming/AX2331_GTTTCGGA_L001_R2_001.PairedOutput.trimmed.fastq \
~/trimming/AX2331_GTTTCGGA_L001_R2_001.UnpairedOutput.trimmed.fastq \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10