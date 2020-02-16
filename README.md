## Aligner Comparsion project code summary

## Part I: Drop-seq data<br>
(i)STAR <br>
*Requires: Drop-seq_tools-1.13, picard, samtools, STAR<br>
see dropseq-star.txt<br>

(ii)Kallisto<br>
*Requires: Drop-seq_tools-1.13, picard, samtools, Kallisto<br>
see dropseq-kallisto.txt<br>

## Part II: Fluidigm data<br>
(i) STAR<br>
*Requires: fastq, cutadapt, trimalore, STAR, subread<br>
1.obtain the demultiplexed fastqs, see fluidigm_trim.txt<br>
2.see fluidigm_star.txt<br>

(ii) Kallisto<br>
*Requires: fastqc, cutadapt, trimaglore, STAR, subread<br>
1.obtain the demultiplexed fastqs, see fluidigm_trim.txt<br>
2.see fluidigm_kallisto.txt<br>

(iii)<br>
Combine individual feature count output, and reformat to count matrix<br>
awk '{print FILENAME"\t"$0}' *.txt |grep -v Geneid > /tmp.txt<br>
For STAR: see transform.r<br>
For Kallisto: see transform_kallisto.r<br>

## Part III: 10x PBMC data<br>
(i) STAR<br>
*Requires: STAR 2.7.3<br>
see starsolo10x.txt<br>
(ii) Kallisto with cDNA index<br>
see kbus10x.txt<br>
see Generate_matrix.py<br>
(iii) Kallisto with cDNA+intron index<br>
*Requires: kallisto bustool 0.39.3<br>
see kpbmc.txt<br>
see kbus393.py<br>


## Part IV: Single nuclei data<br>
(i) STAR<br>
*Requires: STAR 2.7.3<br>
see starcortex1.txt<br>
(ii) Kallisto<br>
*Requires: kallisto bustool 0.39.3<br>
see kcortex1.txt<br>
see kbus393.py<br>

## Part V: Analysis<br>
(i) Figure 1, 2<br>
see aligners.R<br>
(ii) Figure 3,4<br>
see pbmc.R<br>
see singlenuclei.R<br>
(iii) Figure 5<br>
see time.py<br>
