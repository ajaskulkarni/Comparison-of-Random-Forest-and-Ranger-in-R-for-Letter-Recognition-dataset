library(randomForest)
library(foreach)
library(doMC)
library(tictoc)

newdata <- read.csv('letter-recognition.data')

registerDoMC(16)

tic()
rf <- foreach(ntree=c(312,313,312,313,312,313,312,313,312,313,312,313,312,313,312,313), .combine = combine, .packages = 'randomForest') %dopar% randomForest(Letter~X1+X2+X3+X4+X5+X6+X7+X8+X9+X10+X11+X12+X13+X14+X15+X16,data = newdata,ntree=ntree,confusion=TRUE,importance=TRUE)
toc()


