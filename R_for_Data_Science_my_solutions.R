@@ -1,20 +1,34 @@
# install.packages("tidyverse")
# install.packages(c("nycflights13", "gapminder", "Lahman"))
library(tidyverse)
mpg
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), fill = "red", size = 2, shape = 22)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = hwy > 20 & displ > 3.5))
?mpg

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), shape = 3, color = "pink", fill = "white", stroke = 2)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = drv, y = cyl)) +
  facet_grid(. ~ cyl)

