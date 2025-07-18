# Load necessary libraries
if (!require("ggplot2")) install.packages("ggplot2")
library(ggplot2)

# Set seed for reproducibility
set.seed(123)

# Simulate GWAS summary data
n_snps <- 1000
gwas_data <- data.frame(
  SNP = paste0("rs", 1:n_snps),
  beta = rnorm(n_snps, 0, 0.1),
  se = runif(n_snps, 0.01, 0.05)
)
gwas_data$pval <- 2 * pnorm(-abs(gwas_data$beta / gwas_data$se))

# Save the data as CSV file in your project folder
write.csv(gwas_data, "simulated_gwas_summary_stats.csv", row.names = FALSE)

# Create volcano plot
gwas_data$log_pval <- -log10(gwas_data$pval)
gwas_data$significant <- gwas_data$pval < 5e-8

volcano_plot <- ggplot(gwas_data, aes(x = beta, y = log_pval)) +
  geom_point(aes(color = significant)) +
  labs(title = "Simulated GWAS Volcano Plot", x = "Effect Size (Beta)", y = "-log10(P-value)") +
  theme_minimal()

# Show plot in RStudio Plots panel
print(volcano_plot)

# Save the plot as a PNG file in your project folder
ggsave("gwas_volcano_plot.png", plot = volcano_plot, width = 7, height = 5)

