install.packages(c("Rcpp", "RcppArmadillo", "mzR", "parallel", "shiny", "plotly", "data.table", "GA", "IRanges", "dbscan", "randomForest"))
source("https://bioconductor.org/biocLite.R")
biocLite(c("ropls"))
library(devtools);  
install_github("hcji/KPIC2")
