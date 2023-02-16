# this script performs predictive comparison of two linear models and saves the results as an .RData file
Data <- read.csv("./Project-0/CEO_compensations.csv")
names(Data) <- tolower(names(Data))
Data <- Data %>% mutate(educatn=as.factor(educatn),comp=log(comp,2), sales=log(sales,2))
mfinal <- lm(comp~sales+educatn*pcntown+prof, data=Data)
msipmpler <- lm(comp~sales+educatn, data=Data)

ERR <- array(0,c(2,10)) # let's do 10-fold CV
set.seed(517)
Folds <- matrix(sample(1:100),nrow=10)
for(k in 1:10){
  train <- Data[-Folds[k,],]
  test <- Data[Folds[k,],]
  mfinal <- lm(comp~sales+educatn*pcntown+prof, data=train)
  msimpler <- lm(comp~sales+educatn, data=train)
  pred_final <- predict(mfinal, newdata = test, type="response")
  pred_simpler <- predict(msimpler, newdata = test, type="response")
  ERR[1,k] <- sum((test$comp-pred_final)^2)
  ERR[2,k] <- sum((test$comp-pred_simpler)^2)
}
save(ERR,file="./Project-0/cv_data.RData")









