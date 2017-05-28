library(randomForest)
library(foreach)
library(doMC)
library(tictoc)

newdata <- read.csv('letter-recognition.data')

registerDoMC(2)

tic()
rf <- foreach(ntree=rep(500,2), .combine = combine, .packages = 'randomForest') %dopar% randomForest(Letter~X1+X2+X3+X4+X5+X6+X7+X8+X9+X10+X11+X12+X13+X14+X15+X16,data = newdata,ntree=ntree,confusion=TRUE,importance=TRUE)
toc()

print(rf)

