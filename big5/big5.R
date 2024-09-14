test =read.table("tests.tsv", sep='\t', header=TRUE)

test$gender <- factor(
  test$gender,
  labels = c("Male", "Female", "Other"),
  exclude = c(0)
)

test$extroversion <- round(rowSums(test[, c('E1', 'E2', 'E3')])/15, 2)
test$neuroticism <- round(rowSums(test[, c('N1', 'N2', 'N3')])/15, 2)
test$agreeableness <- round(rowSums(test[, c('A1', 'A2', 'A3')])/15, 2)
test$conscientiousness <- round(rowSums(test[, c('C1', 'C2', 'C3')])/15, 2)
test$openness <- round(rowSums(test[, c('O1', 'O2', 'O3')])/15, 2)

write.csv(test, "analysis.csv", row.names = FALSE)