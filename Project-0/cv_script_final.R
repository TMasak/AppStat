# this script performs predictive comparison of two linear models and saves the results as an .RData file
Data <- read.csv("./Project-0/CEO_compensations.csv")
names(Data) <- tolower(names(Data))
Data <- Data %>% mutate(educatn=as.factor(educatn),comp=log(comp), sales=log(sales), pcntown=log(pcntown))

K <- 10 # let's do 10-fold CV
ERR <- array(0,c(4,K))
set.seed(517)
Folds <- matrix(sample(1:100),nrow=K)
for(k in 1:K){
  train <- Data[-Folds[k,],]
  test <- Data[Folds[k,],]
  msuper <- lm(comp ~ educatn*(age+pcntown+I(pcntown^2))+sales+prof, data=Data)
  mfinal_new <- lm(comp ~ educatn*age+sales+prof+pcntown+I(pcntown^2), data=Data)
  mfinal <- lm(comp~sales+educatn*pcntown+prof, data=train)
  msimpler <- lm(comp~sales+educatn, data=train)
  pred_super <- predict(msuper, newdata = test, type="response")
  pred_final_new <- predict(mfinal_new, newdata = test, type="response")
  pred_final <- predict(mfinal, newdata = test, type="response")
  pred_simpler <- predict(msimpler, newdata = test, type="response")
  ERR[1,k] <- sum((test$comp-pred_final_new)^2)
  ERR[2,k] <- sum((test$comp-pred_final)^2)
  ERR[3,k] <- sum((test$comp-pred_simpler)^2)
  ERR[4,k] <- sum((test$comp-pred_super)^2)
}
ERR <- ERR[1:3,]
save(ERR,file="./Project-0/cv_data_final.RData")

# rowMeans(ERR)







