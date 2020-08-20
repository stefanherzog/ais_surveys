fnc_perc <- function(x) {
  # function that rounds numbers nicely:
  # [adding up rounded percentages to equal 100%](http://dochoffiday.com/professional/adding-up-rounded-percentages-to-equal-100)
  
  # floor-round percentages
  perc_floor <- floor(100 * x)
  
  # calculate how many percentage points need to be topped up
  top_up <- 100 - sum(perc_floor)
  
  # order percentages according to their decimal value
  top_up_indices <-
    order(100 * x - perc_floor, decreasing = TRUE)[1:top_up]
  
  # top up the floor-rounded percentages
  perc <- perc_floor
  perc[top_up_indices] <- perc[top_up_indices] + 1
  
  # check
  expect_equal(sum(perc), 100)
  
  return(perc)
}
#fnc_perc(c(.405, .206, .389))
