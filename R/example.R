data(iris)
head(iris)

setwd("..//data")

# Display a plot on Pi #1
png('plot0.png')
plot( log(iris$Sepal.Length), I(!iris$Species=="setosa"))
dev.off()

msg <- system("WinSCP.com /script = '..//code//win_scp_pi_push0'", intern=T)
print(msg)

# Display a plot on Pi #2
png('plot1.png')
plot(iris$Sepal.Length, iris$Petal.Width)
dev.off()

msg <- system("WinSCP.com //script = '..//code//win_scp_pi_push1'", intern=T)
print(msg)
