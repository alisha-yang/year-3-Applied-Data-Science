train <- read.csv('train.csv')
data <- read.csv('final.csv')

t_model0 <- lm(tip_amount ~ 1, data = train)
t_model1 <- step(t_model0, scope = ~ . + avg_speed + pickup_hour + Minimum.Temperature + Maximum.Temperature + Temperature)
t_model2 <- lm(tip_amount ~ (avg_speed + pickup_hour + Maximum.Temperature)^2, data = train)

anova(t_model1, t_model2)

t_model3 <- step(t_model2)
summary(t_model3)

