# Stock Price Analysis with Basic R Operations
By James Weaver

# Introduction
This project explores weekly stock price data using basic operations in the R programming language. It includes fundamental analytical tasks such as calculating averages, filtering stock prices based on conditions, and identifying days with the highest or lowest prices. The project also uses data visualization techniques to showcase stock price trends effectively.

# Files
1. stock_price_analysis.R: The main R script containing all analytical operations, logical checks, and visualizations.
2. README.md: This documentation describing the project, methods, and outputs.
3. stock_prices_plot.png: Visualization of stock prices across days of the week.

# Analysis
The analysis includes:
1. **Vector Creation**: Stock price data for the week is stored in a vector.
2. **Day Assignment**: Each stock price is labeled with a corresponding day of the week.
3. **Statistical Operations**:
- Calculated average stock price for the week.
- Summed total weekly stock price.
4. **Logical Filtering**: Identified stock prices above or below certain thresholds.
5. **Condition Based Filtering**:
- Filtered days where stock prices exceeded $23.
- Identified days with below-average stock prices.
6. **Visualization**: Created a bar plot using ggplot2 to visualize stock price trends over the week.

# Code Highlights
## 1. Create Stock Prices Vector
`# Create a vector of stock prices
stock.price <- c(23, 27, 23, 21, 34)

# Assign day names to stock prices
```
week.days <- c("Mon", "Tue", "Wed", "Thr", "Fri")
names(stock.price) <- week.days

print(stock.price)
```
## 2. Logical Filtering for Prices > $23
```
# Find days where stock prices exceed $23
over.23 <- stock.price > 23
print(stock.price[over.23])
```
## 3. Find the Day with the Highest Stock Price
```
# Identify the day with the maximum stock price
max_price <- stock.price[stock.price == max(stock.price)]
print(max_price)
```
## 4. Visualize Stock Prices Using ggplot2
```
# Create a bar plot for stock prices
library(ggplot2)

df <- data.frame(days = names(stock.price), price = stock.price)
df$days <- factor(df$days, levels = c("Mon", "Tue", "Wed", "Thr", "Fri"))

barchart <- ggplot(df, aes(x = days, y = price, fill = days)) +
    geom_bar(stat = "identity") +
    theme_minimal() +
    labs(x = "Day Of Week", y = "Stock Price", title = "Stock Prices Over The Week")

barchart
```

# Key Findings
1. **Average Stock Price**: The average stock price for the week is 25.6.
2. **Highest Stock Price**: The highest stock price occurred on Friday with a value of $34.
3. **Short Stock Prices (< $23)**: Stock prices fell below the average on Monday, Wednesday, and Thursday.
4. **Stock Price Visualization**: The bar plot clearly highlights trends in stock prices across the week.

# Visualization
## Bar Plot: Stock Prices Over the Week

# Tools Used
- **R Programming Language**: Data analysis and manipulation.
- **ggplot2**: Data visualization for stock price trends.

# Future Improvements
- Add real-world stock data from APIs like Alpha Vantage or Yahoo Finance.
- Compare weekly trends across multiple weeks or years.
- Implement time series analysis for stock price forecasting.
