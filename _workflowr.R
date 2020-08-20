### workflowr management
#
# Note: `dry_run` is set to `TRUE`


# project files
# (in their order of processing)
files <- c(
  "analysis/index.Rmd",
  "analysis/dalia_make_data.Rmd",
  "analysis/dalia_figures.Rmd"
)


# Building the project website
wflow_build(files = files,
            verbose = TRUE,
            republish = TRUE,
            update = FALSE,
            delete_cache = TRUE,
            dry_run = TRUE)


# Publishing/updating the project website
wflow_publish(
  files = files,
  republish = TRUE,
  delete_cache = TRUE,
  dry_run = TRUE
)

