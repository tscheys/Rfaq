Randomize order of observations 
n = nrow(observations)
indexes = sample(1:n)

Split into chunks
lets say we do 5 fold cross validation
chunkSize = n / 5 
x = split(d, ceiling(seq_along(d)/chunkSize))

seq_along(n) = seq(1,n) but seq along is a lot faster

