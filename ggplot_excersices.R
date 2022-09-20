library(tidyverse)
library(cowplot)
library(advr38pkg)
library(plotly)

head(iris)
(irisTD <- iris %>%
    tidyr::pivot_longer(-Species)) 

ggplot(irisTD) + 
  geom_density(aes(value, col=Species))

ggplot(irisTD) + 
  geom_density(aes(value, fill=Species), alpha = 0.6)+
  facet_wrap(~name,scales = "free") + 
  theme_set(theme_bw(18))+
  scale_fill_viridis_d()
 
ggplot(iris, aes(Petal.Length, Petal.Width, 
                 color = Species, shape = Species)) + 
  geom_point(size = 3)

plotly::ggplotly(width = 700, height = 450)



