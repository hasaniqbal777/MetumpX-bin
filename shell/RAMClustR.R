BiocManager::install("MSnbase")
BiocManager::install("Rdisop")
library(devtools)
install_github("cbroeckl/RAMClustR", build_vignettes = TRUE, dependencies = TRUE)
