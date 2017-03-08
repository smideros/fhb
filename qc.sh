#!/bin/bash
for i in /Volumes/Data/FHB/dataraw/*.fastq
do
    echo "fastqc on file $i"
    /Applications/FastQC/fastqc $i -o /Volumes/Data/FHB/qc
done



