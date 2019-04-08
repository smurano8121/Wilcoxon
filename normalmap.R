#date=read.csv("normalmap.csv",stringsAsFactors = F, fileEncoding = "UTF-8-BOM")
date <- read.csv("normalmap.csv")
i <- 1
while (i <= 10) {
  group1 <- date[,i]
  group2 <- date[,i+10]
  print(i)
  print(group1)
  print(group2)
  result <- wilcox_test(c(group1,group2) ~ factor(c(rep("group1",length(group1)),rep("group2",length(group2)))),distribution="exact")
  print(result)
  #print(date[1,1])
  #write.csv(group1$i, "C:/Users/smura/Desktop/“Œv/pvalue.csv")
  #write.csv(c.result$p.value, "C:/Users/smura/Desktop/“Œv/pvalue.csv")
  i <- i + 1
}


