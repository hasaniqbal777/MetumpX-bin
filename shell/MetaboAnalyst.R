metanr_packages <- function(){

  metr_pkgs <- c("Rserve", "ellipse", "scatterplot3d", "Cairo", "randomForest", "caTools", "e1071", "som", "impute", "pcaMethods", "RJSONIO", "ROCR", "globaltest", "GlobalAncova", "Rgraphviz", "preprocessCore", "genefilter", "pheatmap", "SSPA", "sva", "Rcpp", "pROC", "data.table", "limma", "car", "fitdistrplus", "lars", "Hmisc", "magrittr", "methods", "xtable", "pls", "caret", "lattice", "igraph", "gplots", "KEGGgraph", "reshape", "RColorBrewer", "tibble", "siggenes", "plotly")

  list_installed <- installed.packages()

  new_pkgs <- subset(metr_pkgs, !(metr_pkgs %in% list_installed[, "Package"]))

  if(length(new_pkgs)!=0){

    BiocManager::install(new_pkgs, dependencies = TRUE, ask = FALSE)
    print(c(new_pkgs, " packages added..."))
  }

  if((length(new_pkgs)<1)){
    print("No new packages added...")
  }
}
metanr_packages()
devtools::install_github("xia-lab/MetaboAnalystR", build_vignettes=TRUE, dependencies=TRUE)
