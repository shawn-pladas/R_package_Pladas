# ggplot(crabs, aes(x = carapace_length, y = body_depth, color = color)) + 
#  geom_point() + 
#  labs(x = "Carapace length (mm)",
#       y = "Body Depth (mm)",
#       color = "Crab color") + 
#  scale_color_manual(values = c("blue", "orange")) + # why not!
#  geom_smooth(method = "lm") +
#  annotate("text", x = 20, y = 30, label = "R^2 == 0.988", parse=T, size=5)