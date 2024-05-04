summary(iris)
head(iris)
by(iris$Petal.Length, iris$Species, summary)
mean(iris$Sepal.Length)
var(iris$Sepal.Length)
boxplot(iris$Petal.Length)
boxplot(Petal.Length ~ Species, data=iris, main="Petal Length", xlab="Species", ylab="Length")
hist(iris$Petal.Length)
hist(iris$Sepal.Width)
hist(iris$Sepal.Width[iris$Species=="setosa"])
hist(iris$Sepal.Width[iris$Species=="versicolor"])
d=density(iris$Petal.Length)
plot(d)
d=density(iris$Sepal.Width[iris$Species=="versicolor"]) 
plot (d)
library(ggplot2)
data_fairuz <- read.table("clipboard", header = TRUE)
qplot(data_fairuz$AmountSpent, data_fairuz$Salary)
plot(data_fairuz$AmountSpent, data_fairuz$Salary)
# Memuat paket ggplot2
library(ggplot2)

# Membaca data CSV
direct_marketing <- read.table("clipboard", header = TRUE)

# Membuat histogram untuk variabel AmountSpent
hist(direct_marketing$AmountSpent,
     main = "Histogram of AmountSpent",
     xlab = "AmountSpent",
     ylab = "Frequency",
     col = "skyblue",
     border = "black")

# Membuat density plot untuk variabel AmountSpent
ggplot(direct_marketing, aes(x = AmountSpent)) +
  geom_density(fill = "skyblue", color = "black", alpha = 0.5) +
  labs(title = "Density Plot of AmountSpent", x = "AmountSpent", y = "Density")
library(ggplot2)
data_fairuz <- read.table("clipboard", header = TRUE)
plot(data_fairuz$SqFt, data_fairuz$Price)