## Chart of the week — the cumulative curve (after Apple's 2013 cumulative iPhone sales chart)
library(tidyverse)
library(showtext)
library(sysfonts)
library(ragg)
font_add_google("Special Elite", "special_elite"); font_add_google("Libre Baskerville", "baskerville")
showtext_auto(); showtext_opts(dpi = 150); source("../themes.R")
q <- seq(as.Date("2019-01-01"), as.Date("2026-04-01"), by = "quarter")
n <- length(q)
quarterly <- c(1800, 2100, 2500, 3100, 3400, 3900, 4600, 5400, 6300, 7500, 8800, 10200,
               11300, 12400, 13100, 13800, 14200, 14600, 14300, 13500, 12600, 11800, 11000,
               10400, 9900, 9600, 9400, 9300, 8100, 4800)
stopifnot(length(quarterly) == n)
dat <- tibble(quarter = q, label = paste0(format(q, "%Y"), " Q", (as.integer(format(q, "%m")) - 1) %/% 3 + 1),
              registrations = quarterly, cumulative = cumsum(quarterly))
write_csv(dat, "harland-ev-registrations.csv")
p <- ggplot(dat, aes(quarter, cumulative)) +
  geom_area(fill = "#f1c40f", alpha = 0.25) +
  geom_line(color = "#f1c40f", linewidth = 1.2) +
  geom_point(color = "#f1c40f", size = 1.6) +
  scale_y_continuous(labels = scales::label_comma(), expand = c(0, 0), limits = c(0, 280000)) +
  scale_x_date(date_breaks = "1 year", date_labels = "%Y", expand = c(0.01, 0)) +
  labs(title = "Cumulative electric vehicle sales in Harland, since 2019",
       subtitle = "Sales keep accelerating.",
       x = NULL, y = "Registrations",
       caption = "Source: Harland Vehicle Licensing Agency. Chart: The Metropolitan Ledger.") +
  theme_detective() +
  theme(panel.grid.major.x = element_blank(), plot.caption = element_text(hjust = 0, size = 8.5))
ggsave("chart-cumulative.png", p, width = 7.2, height = 4.6, dpi = 150, device = ragg::agg_png, bg = "black")
