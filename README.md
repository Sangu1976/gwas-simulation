# GWAS Simulation and Volcano Plot

This project simulates GWAS summary statistics and generates a volcano plot using R.

Files included:
- `gwas_simulation.R`: R script with the simulation and plotting code.
- `simulated_gwas_summary_stats.csv`: Simulated GWAS data.
- `gwas_volcano_plot.png`: Volcano plot generated from the data.

How to use:
- Run the R script to reproduce the simulation and plot.

# GWAS Volcano Plot Simulation

This project simulates Genome-Wide Association Study (GWAS) summary statistics and visualizes the results using a volcano plot in R.

## 📦 Contents

- `gwas_simulation.R` – R script to simulate data and plot
- `simulated_gwas_summary_stats.csv` – Simulated SNP-level data
- `gwas_volcano_plot.png` – Volcano plot visualization

## 📈 What it Does

1. Simulates beta and standard error for 1000 SNPs
2. Calculates p-values
3. Creates a volcano plot with effect size vs significance
4. Saves the data and plot

## 📌 Why It Matters

This project mimics real GWAS workflows and demonstrates how R can be used to process and visualize genomic data — a key requirement in statistical genomics research.

## 💻 Tools Used

- R
- `ggplot2`
- Base R functions

## 🧠 Concepts Practiced

- GWAS summary statistics
- SNP filtering
- p-value transformation
- Volcano plots for genetic analysis

## 🧬 Future Goals

- Work with real GWAS summary stats
- Use Bioconductor packages like `TwoSampleMR`, `MendelianRandomization`
- Extend to protein-trait causal inference analysis
