#cross validation
#randomize order of observations
crossValidate <- function(basetable) {
  randomIndex = sample(1:nrow(basetable))
  chunkSize = nrow(basetable)/5
  splits = split(random, ceiling(seq_along(random)/chunkSize))
  
  for(k in 1:5) {
    k=4
    train = predictRatings(basetable[splits[k][[1]],], numberOfFeatures, iterations, alpha, lambda)
    test = predictRatings(basetable[-splits[k][[1]],], numberOfFeatures, iterations, alpha, lambda)
    yhat = train$x %*% t(test$theta)
    #to do make sure matrices are of same size 
    MSE = 1/nrow(basetable)*(test$y - yhat)^2
  }
  
}
