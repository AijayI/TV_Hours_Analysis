library(tidyverse)
library(here)
library(dplyr)


tv_hrs_table <- gss_cat %>%
  filter(age <=30) %>%
  group_by(marital) %>% 
  summarise(mean_tv_hrs = mean(tvhours, na.rm = T))
write_csv(tv_hrs_table, here("TV_Hours_By_Marital"))

tv_hrs_tab
