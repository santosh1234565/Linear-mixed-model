setwd("C:\\Users\\HP\\OneDrive\\Documents\\R\\trial")


library(nlme)

data("Oats")
head(Oats)
str(Oats)
plot(Oats)

# classical linear model, without random factors
model = lm( yield ~ Variety*nitro, data = Oats)
summary(model)
anova(model)

# for mixed model, use "lme" function
model1 = lme (yield ~ Variety*nitro, data = Oats, random = ~1|Block/ Variety/nitro)
 # in the above case, the model is saturated with random factors, so remove subplot
#level random factor, ie.e nitro)

model1 = lme(yield ~ Variety*nitro, data = Oats, random = ~1|Block/Variety)
summary(model1)
