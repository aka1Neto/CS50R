file <- readline()
table <- read.table(file, sep=',', header=TRUE)

print(nrow(table))
print(min(table$time))
print(max(table$time))
print(sum(table$time))