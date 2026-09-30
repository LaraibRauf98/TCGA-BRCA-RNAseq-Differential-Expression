# ============================================================
# TCGA-BRCA Bulk RNA-seq Analysis
# Step 1: Query and Download Gene Expression Data
# ============================================================

# Load required packages
library(TCGAbiolinks)
library(SummarizedExperiment)
library(edgeR)

# Set working directory
setwd("D:/Bulk_RNAseq_TCGA")

# Query TCGA-BRCA
query <- GDCquery(
  project = "TCGA-BRCA",
  data.category = "Transcriptome Profiling",
  data.type = "Gene Expression Quantification",
  workflow.type = "STAR - Counts"
)

# Download data
GDCdownload(query)
