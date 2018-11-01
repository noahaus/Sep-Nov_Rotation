#Compute matrix of genetic distances between sequences
#creates a genetic distance matrix
setwd("FallRotation_Liliana/")
install.packages("ape") #compute the genetic distance
install.packages("gplots") #enhanced parameters for heatmap
library(gplots)
library(ape)

snp.file <- read.nexus.data("NEXUS_TEST.nexus") #output from nexus_creation.r
m <- as.matrix(dist.dna(as.DNAbin(snp.file), model="raw")) #turns dist object into matrix object
SNP <- floor(m*391)


natural.break <- seq(0,40,1) #the number of bins to scale
color.palette  <- colorRampPalette(c("#FFF700", "#FC0202"))(length(natural.break) - 1) #transition of color

#genetic distance between deer in 2000
#load 2000deer.csv
heatmap.2(SNP,Rowv = NA,Colv = NA, scale = "none",cexRow = 1,cexCol = 1, margins = c(10, 12), breaks = natural.break, col = color.palette,legend = "col",trace = "none")

