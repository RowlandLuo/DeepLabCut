library(tidyverse)
loss <- read_csv("learning_stats.csv")
ploss <- ggplot(loss, aes(x = Iteration, y = Loss)) +
  geom_point(color = "blue") +
  geom_smooth(method = "loess", se = FALSE, color = "#FF000080") +
  labs(title = "Loss with Iterations")
ploss
pmap <- ggplot(loss, aes(x = Iteration, y = `Scamp Loss`)) +
  geom_point(color = "blue") +
  geom_smooth(method = "loess", se = FALSE, color = "#FF000080") +
  labs(title = "SCmap Loss with Iterations")
pmap
locref <- ggplot(loss, aes(x = Iteration, y = `Locref Loss`)) +
  geom_point(color = "blue") +
  geom_smooth(method = "loess", se = FALSE, color = "#FF000080") +
  labs(title = "Locref Loss with Iterations")
locref
limb <- ggplot(loss, aes(x = Iteration, y = `Limb Loss`)) +
  geom_point(color = "blue") +
  geom_smooth(method = "loess", se = FALSE, color = "#FF000080") +
  labs(title = "Limb Loss with Iterations")
limb
ir <- ggplot(loss, aes(x = Iteration, y = Ir)) +
  geom_point(color = "blue") +
  geom_smooth(method = "loess", se = FALSE, color = "#FF000080") +
  labs(title = "Ir with Iterations")
ir
library(gridExtra)
p <- grid.arrange(ploss, pmap, locref, limb, ir, nrow = 3, ncol = 2)