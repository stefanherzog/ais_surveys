# load packages
if (!require("pacman")) install.packages("pacman"); library(pacman)

p_load(here, 
       assertr, 
       testthat, 
       readxl, 
       skimr, 
       srvyr, 
       tidyverse, 
       tidylog, 
       glue,
       cowplot, 
       knitr, 
       kableExtra, 
       formattable, 
       scales, 
       ggforce, 
       ggrepel, 
       viridis, 
       rebus, 
       DT,
       spatstat,
       quantreg,
       ggthemes)


source(here("code/fncs.R"))

# https://github.com/NicolasWoloszko/stat_ecdf_weighted
source(here("code/stat_ecdf_weighted.R"))



# Names and colors for the different acceptability dimensions
tbl_acceptability_str <- tribble(
  ~ topic,                     ~ topic_str,      ~ color_hex,
  "acceptability_service",       "Services",     "#a34100",
  "acceptability_information",   "Information",  "#1f78b4",
  "acceptability_data",         "Data",          "#000000",
)


# Gap types
gap_types_dist <- .75
# relative position of percentage values in quadrants of individual gap figure
tbl_gap_types <- tribble(
  ~type, ~type_x, ~type_y, ~type_str, ~color_hex,
  "both", gap_types_dist, gap_types_dist,  "gap", "#1f78b4",
  "only data", -gap_types_dist, gap_types_dist, "only data", "#33a02c",
  "only information", gap_types_dist, -gap_types_dist, "only info", "#a34100",
  "neither", -gap_types_dist, -gap_types_dist, "no gap", "#292929",
)
gap_types_color_hex <- tbl_gap_types$color_hex
names(gap_types_color_hex) <- tbl_gap_types$type
