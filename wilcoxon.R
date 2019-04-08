date <- read.csv("C:/Users/smura/develop/R言語/wilcoxon/normalmap.csv",header=TRUE, sep = ",") #絶対パスで指定

i <- 1
while (i <= 10) {
  group1 <- date[,i] 
  group2 <- date[,i+10]
  #print(group1)
  #print(group2)
  result <- wilcox_test(c(group1,group2) ~ factor(c(rep("group1",length(group1)),rep("group2",length(group2)))),distribution="exact")
  #result <- wilcox.test(group1,group2)
  #print(i)
  print(result)
  #write.csv(group1$i, "pvalue.csv")
  #write.csv(c.result$p.value, "pvalue.csv")
  i <- i + 1
}







