#!/bin/bash

# ----------------QSUB Parameters----------------- #
#PBS -S /bin/bash
#PBS -q budget
#PBS -l nodes=1:ppn=1,mem=1000mb
# ----------------Load Modules-------------------- #
# ----------------Your Commands------------------- #
tar -zxvf ~/rawdata/*.tgz
