result <- 2^5
paste('Two to the power of 5 is',result)

stock.price <- c(23,27,23,21,34)
print(stock.price)

week.days <- c("Mon","Tue","Wed","Thr","Fri")
names(stock.price) <- week.days
print(stock.price)

average <- mean(stock.price)
print(average)

over.23 <- stock.price > 23
print(over.23)

print(stock.price[over.23])

print(stock.price[stock.price == max(stock.price)] )

total <- sum(stock.price)
paste("The total stock price for the week is",total)

below.average <- stock.price[stock.price < average]
names(below.average)

install.packages('ggplot2')
library(ggplot2)

# create dataframe

df <- data.frame( days = names(stock.price), price = stock.price)

# Set the order of the days
df$days <- factor(df$days, levels = c("Mon", "Tue", "Wed", "Thr", "Fri"))

barchart <- ggplot(df, aes(x=days,y=price,fill=days)) +
    geom_bar(stat = "identity") +
    theme_minimal() +
    labs(x="Day Of Week",y="Stock Price", title="Stock Prices Over The Week")

barchart
