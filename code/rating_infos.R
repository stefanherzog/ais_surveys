# initialize `rating_infos`
rating_infos <- list()

### FAMILIARITY
rating_infos$familiarity <- tribble(
  ~rating, ~rating_chr, ~color_hex,
  4, "know what it means and can explain it", "#e66101",
  3, "know more or less what it means", "#fdb863",
  2, "have heard the term but not sure what it means", "#b2abd2",
  1, "never heard about it", "#5e3c99",
)
rating_infos$familiarity_colors <- rating_infos$familiarity$color_hex
names(rating_infos$familiarity_colors) <- rating_infos$familiarity$rating_chr


### KNOWLEDGE
rating_infos$knowledge <- tribble(
  ~rating, ~rating_chr, ~color_hex,
  1, "yes", "#e66101",
  2, "no", "#5e3c99",
  3, "do not know", "#bdbdbd",
)
rating_infos$knowledge_colors <- rating_infos$knowledge$color_hex
names(rating_infos$knowledge_colors) <- rating_infos$knowledge$rating_chr

### ACCEPTABILITY
rating_infos$acceptability <- tribble(
  ~rating, ~rating_chr, ~color_hex,
  1, "not acceptable at all", "#e66101",
  2, "not very acceptable", "#fdb863",
  3, "somewhat acceptable", "#b2abd2",
  4, "very acceptable", "#5e3c99",
)

rating_infos$acceptability_colors <- rating_infos$acceptability$color_hex
names(rating_infos$acceptability_colors) <- rating_infos$acceptability$rating_chr

### BEHAVIOR
rating_infos$behavior <- tribble(
  ~rating, ~rating_chr, ~color_hex,
  1, "yes", "#e66101",
  2, "no", "#5e3c99",
  3, "does not apply to me", "#bdbdbd",
)
rating_infos$behavior_colors <- rating_infos$behavior$color_hex
names(rating_infos$behavior_colors) <- rating_infos$behavior$rating_chr

### CONCERN
rating_infos$concern <- tribble(
  ~rating, ~rating_chr, ~color_hex,
  1, "not concerned at all", "#5e3c99",
  2, "not very concerned", "#b2abd2",
  3, "somewhat concerned", "#fdb863",
  4, "very concerned", "#e66101",
)
rating_infos$concern_colors <- rating_infos$concern$color_hex
names(rating_infos$concern_colors) <- rating_infos$concern$rating_chr

### SERVICES
rating_infos$services <- tribble(
  ~rating, ~rating_chr, ~color_hex,
  1, "yes", "#e66101",
  2, "no", "#5e3c99",
)
rating_infos$services_colors <- rating_infos$services$color_hex
names(rating_infos$services_colors) <- rating_infos$services$rating_chr


### YES/NO
rating_infos$yes_no <- tribble(
  ~rating, ~rating_chr, ~color_hex,
  TRUE, "yes", "#e66101",
  FALSE, "no", "#5e3c99",
)
rating_infos$yes_no_colors <- rating_infos$yes_no$color_hex
names(rating_infos$yes_no_colors) <- rating_infos$yes_no$rating_chr



# Colors are: http://colorbrewer2.org/#type=diverging&scheme=PuOr&n=4
# It's the only diverging palette of four colors that is simultaniously
# colorblind safe, print friendly, and photocopy safe
