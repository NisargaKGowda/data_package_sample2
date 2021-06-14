# FL_load.R

library(tidyverse)

FL_raw <- readr::read_csv("C:\\Users\\99003348\\Desktop\\datapackagesampletwo\\data-raw\\FL.csv")
head(FL_raw)
# Add any tidying steps to this script if necessary
FL <- FL_raw[-c(1:3),]
head(FL)
colnames(FL) <- c("policyID", "statecode", "county", FL_raw[1,4:15])
FL <- readr::type_convert(FL)
head(FL)
