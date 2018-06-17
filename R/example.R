# options
# setwd("..//data")

# libraries
if(!require(pacman)) install.packages("pacman")
pacman::p_load(ggridges, ggplot2, wordcloud2)

# Data
head(diamonds)
head(demoFreq)

# Display a plot on Pi #1
png('C:/users/jmiller/Desktop/piR/data/plot0.png')
ggplot(diamonds, aes(x = price, y = cut, fill = cut)) +
  geom_density_ridges() +
  theme_ridges() + 
  theme(legend.position = "none")
dev.off()

#msg <- system("WinSCP.com /script = '..//code//win_scp_pi_push0'", intern=T)
#print(msg)

# Display a plot on Pi #2
png('C:/users/jmiller/Desktop/piR/data/plot1.png')
wordcloud2(demoFreq, size = 0.7, shape = 'star')
dev.off()

#msg <- system("WinSCP.com //script = '..//code//win_scp_pi_push1'", intern=T)
#print(msg)
