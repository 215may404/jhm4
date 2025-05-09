import yfinance as yf
import pandas as pd 

ticker = ["SPY","XLK"]
start_date = "2020-01-01"
end_date = "2025-04-25"

current_date = datetime.now().strftime('%Y-%m-%d')

if end_date > current_date :
    print(f"Note: End date is int the future. Data will only be availbe until {current_date}")
    end_date = current_date

data = yf.download(ticker, start=atart_date, end=end_date)["Adj Close"]

data.to_csv("stock_data.csv")
