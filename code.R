library(Biostrings)
prot <- readAAStringSet("protein.fasta")
seqs <- as.character(prot)

pos <- regexpr("S..K", seqs)  
all <- gregexpr("N[^P][ST]", seqs) 

n <- seq_along(prot)
plot(NA, xlim = c(0, max(width(prot))), ylim = c(0, max(n)+1),
     xlab = "position of amino-acid", ylab = "", yaxt = "n")
segments(0, n, width(prot), n, lwd = 6, col = "grey70")
points(ifelse(pos > 0, pos, NA), n, pch = 19, col = "red", cex = 2)
