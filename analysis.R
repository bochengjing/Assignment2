## Homework 2
## Bocheng Jing
## 2026/04/27

## Load the library
#install.packages("tableone")
#install.packages("pROC")
library(tableone)
library(pROC)

## read the data
dat<-read.csv('/Users/bochengjing/Documents/Documents/Stanford PhD/Courses/Spring 2026/EPI 203/Homework/cohort.csv',header=T)
head(dat)
str(dat)
dim(dat) ##5000 5

##1.  create a table to describe all the variables.
dat$smoke  <- factor(dat$smoke, levels = c(0,1), labels = c("No","Yes"))
dat$female <- factor(dat$female, levels = c(0,1), labels = c("Male","Female"))
dat$cardiac <- factor(dat$cardiac, levels = c(0,1), labels = c("No","Yes"))
vars <- c("smoke", "female", "age", "cardiac","cost")
table1 <- CreateTableOne(
  vars = vars,
  data = dat,
  factorVars = c("smoke", "female","cardiac")
)
print(table1, showAllLevels = TRUE)

##2. A prediction algorithm -- let's use the logistic regression with outcome cardiac, covariates smoke, female, age, and cost
model <- glm(cardiac ~ smoke + female + age + cost, data = dat,family = binomial(link = "logit"))
summary(model)

##3. Plot the ROC curve
dat$predicted_risk <- predict(model, type = "response")
roc_obj <- roc(dat$cardiac, dat$predicted_risk)
plot(roc_obj, main = "ROC Curve for Cardiac Event Prediction")
auc(roc_obj)


