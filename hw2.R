possibilities <- c("10blue : 0white", "9blue :1white", "8blue :2white", "7blue :3white", "6blue :4white", 
                   "5blue :5white", "4blue :6white", "3blue : 7white", "2blue :8white", "1blue :9w hite", 
                   "0blue :10white")

m <- 20 #white tokens
n <- 50 #blue tokens
k <- 10 #number of tokens drawn



phyper(1:10, m, n,k)
