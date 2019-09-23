combinations <- c("10blue : 0white", "9blue :1white", "8blue :2white", "7blue :3white", "6blue :4white", 
                   "5blue :5white", "4blue :6white", "3blue : 7white", "2blue :8white", "1blue :9w hite", 
                   "0blue :10white")
probability <-  print(dhyper(0:10, m = 20, n = 50, k = 10))

combinations <- as.data.frame(combinations) 
probability <- as.data.frame(probability)

list1 <- cbind(combinations, probability)
print(list1)
