# Load necessary libraries
library(ggplot2)
library(rgl)

library(readr)
laptops <- read_csv("F:/R Programming/laptops_data.csv")

# Data cleaning: Remove currency symbols from Price and convert to numeric
laptops$Price <- as.numeric(gsub("[^0-9.]", "", laptops$Price))

# ==================== ggplot2: Seven Layer Graphs ====================

# 1. Layer 1: Data - Basic scatter plot (Data layer)
gg1 <- ggplot(laptops, aes(x = Rating, y = Price)) +
  geom_point(color = "blue", size = 3) +
  labs(title = "Layer 1: Data (Scatter Plot)", x = "Rating", y = "Price ($)")
print(gg1)

# 2. Layer 2: Aesthetics - Adding color based on Rating (Aesthetics layer)
gg2 <- ggplot(laptops, aes(x = Rating, y = Price, color = as.factor(Rating))) +
  geom_point(size = 3) +
  labs(title = "Layer 2: Aesthetics (Color by Rating)", x = "Rating", y = "Price ($)")
print(gg2)

# 3. Layer 3: Geometry - Adding a line to the scatter plot (Geometry layer)
gg3 <- ggplot(laptops, aes(x = Rating, y = Price)) +
  geom_point(size = 3, color = "blue") +
  geom_line(stat = "summary", fun = mean, color = "red") +
  labs(title = "Layer 3: Geometry (Scatter Plot + Line)", x = "Rating", y = "Price ($)")
print(gg3)

# 4. Layer 4: Statistical Transformation - Adding a smooth regression line (Statistical Transformation layer)
gg4 <- ggplot(laptops, aes(x = Rating, y = Price)) +
  geom_point(size = 3, color = "blue") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Layer 4: Statistical Transformation (Linear Regression)", x = "Rating", y = "Price ($)")
print(gg4)

# 5. Layer 5: Position - Using jitter to handle overlapping points (Position layer)
gg5 <- ggplot(laptops, aes(x = Rating, y = Price)) +
  geom_jitter(size = 3, color = "blue", width = 0.2, height = 50) +
  labs(title = "Layer 5: Position (Jitter)", x = "Rating", y = "Price ($)")
print(gg5)

# 6. Layer 6: Facets - Create subplots based on Rating (Facets layer)
gg6 <- ggplot(laptops, aes(x = Rating, y = Price)) +
  geom_point(size = 3, color = "blue") +
  facet_wrap(~ Rating) +
  labs(title = "Layer 6: Facets (Subplots by Rating)", x = "Rating", y = "Price ($)")
print(gg6)

# 7. Layer 7: Coordinates - Using a logarithmic scale for Price (Coordinates layer)
gg7 <- ggplot(laptops, aes(x = Rating, y = Price)) +
  geom_point(size = 3, color = "blue") +
  scale_y_log10() +
  labs(title = "Layer 7: Coordinates (Logarithmic Scale for Price)", x = "Rating", y = "Price ($)")
print(gg7)

# ==================== rgl: 3D Graphs ====================

# Use word count of Description as the third dimension for 3D plotting
laptops$DescriptionLength <- nchar(as.character(laptops$Description))

# 1. Basic 3D scatter plot
open3d()
plot3d(laptops$Rating, laptops$Price, laptops$DescriptionLength, 
       col = "green", size = 5, type = "s", xlab = "Rating", ylab = "Price", zlab = "Description Length")

# 2. Adding another dimension: Color based on Rating
open3d()
plot3d(laptops$Rating, laptops$Price, laptops$DescriptionLength, 
       col = rainbow(length(laptops$Rating)), size = 5, type = "s", xlab = "Rating", ylab = "Price", zlab = "Description Length")

# 3. Grid and background customization
open3d()
bg3d("white")
plot3d(laptops$Rating, laptops$Price, laptops$DescriptionLength, 
       col = "blue", size = 5, type = "s", xlab = "Rating", ylab = "Price", zlab = "Description Length")
grid3d(c("x", "y", "z"))
