library(pgmm)

Sys.setenv(LANG = "en_US")
Sys.getlocale()

data(coffee)

str(coffee)

## boxplot on a formula:
boxplot(Fat ~ Variety, data = coffee, col = "lightgray")

boxplot(Fat ~ Variety, data = coffee, col = 2:3)

boxplot(Fat ~ Variety, data = coffee, col = rainbow(A2))

boxplot(Caffine ~ Variety, data = coffee, col = c("red","yellow"))

plot(coffee$Fat, coffee$Caffine, xlab="Fat",ylab="Caffine", 
     col= coffee$Variety, palette = c("#00AFBB", "#E7B800"))

library(ggpubr)
coffee$Variety <- factor(coffee$Variety, labels=c("Arabica","Robusta"))

ggscatterhist(
  coffee, x = "Caffine", y = "Fat",
  color = "Variety", size = 3, alpha = 0.6,
  palette = c("#00AFBB", "#E7B800"),
  margin.params = list(fill = "Variety", color = "black", size = 0.2)
)

