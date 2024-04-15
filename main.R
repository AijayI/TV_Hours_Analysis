library(tidyverse)
library(here)


tv_hrs_tab <- gss_cat %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hrs = mean(tvhours, na.rm = T))
