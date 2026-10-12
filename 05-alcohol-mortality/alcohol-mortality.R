library(ggplot2)

### Create Exhibit 1

# Generate synthetic data on relative mortality risk by alcohol intake category
df <- data.frame(
  alcohol = factor(
    rep(c("0", "1", "2", "3", "4", "5", "6+"), 2),
    levels = c("0", "1", "2", "3", "4", "5", "6+")
  ),
  risk = c(
    # Men
    1.00, 0.84, 0.88, 0.96, 1.05, 1.15, 1.28,
    # Women
    1.00, 0.84, 0.89, 0.98, 1.10, 1.25, 1.45
  ),
  sex = factor(
    rep(c("Men", "Women"), each = 7),
    levels = c("Men", "Women")
  )
)

p <- ggplot(
  df,
  aes(x = alcohol, y = risk, group = sex, colour = sex)
) +
  geom_line(linewidth = 1) +
  geom_point(size = 2.5) +
  geom_hline(
    yintercept = 1,
    linetype = "dashed",
    linewidth = 0.5
  ) +
  labs(
    x = "Units of alcohol consumption",
    y = "Relative mortality risk",
    colour = NULL
  ) +
  theme_minimal(base_size = 12) +
  theme(
    panel.grid = element_blank()
  )

ggsave(
  filename = "exhibit1.png",
  plot = p,
  width = 7,
  height = 4.5,
  units = "in",
  dpi = 300
)


### Exhibit 2

df <- data.frame(
  drinking_days = rep(c("<1", "1 to 2", "3+"), each = 3),
  drinks_per_day = rep(c("1", "2", "3+"), times = 3),
  
  # Fictitional data
  hr = c(
    0.75, 0.80, 1.00,  # <1 drinking day/week
    0.82, 0.61, 0.78,  # 1-2 drinking days/week
    0.68, 0.76, 0.93   # 3+ drinking days/week
  )
)

df$drinking_days <- factor(
  df$drinking_days,
  levels = c("<1", "1 to 2", "3+")
)

df$drinks_per_day <- factor(
  df$drinks_per_day,
  levels = c("1", "2", "3+")
)

p <- ggplot(
  df,
  aes(
    x = drinking_days,
    y = hr,
    fill = drinks_per_day
  )
) +
  geom_col(
    position = position_dodge(width = 0.8),
    width = 0.7
  ) +
  scale_y_continuous(
    breaks = seq(0.5, 1.0, 0.1)
  ) +
  scale_fill_manual(
    values = c(
      "1"  = "purple",
      "2"  = "orange",
      "3+" = "darkgreen"
    )
  ) +
  coord_cartesian(
    ylim = c(0.5, 1.02)
  ) +
  labs(
    x = "Drinking days per week",
    y = "Hazard ratio for cardiovascular mortality",
    fill = "Drinks per drinking day"
  ) +
  theme_classic(base_size = 13) +
  theme(
    legend.title = element_text(face = "bold"),
    axis.title = element_text(face = "bold"),
    panel.grid = element_blank()
  )

print(p)

ggsave(
  "exhibit2.png",
  plot = p,
  width = 7,
  height = 5,
  dpi = 300
)
