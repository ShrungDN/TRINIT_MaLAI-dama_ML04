# import os
# os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' 
# import tensorflow as tf
import requests
import pandas as pd
import numpy as np 
from sklearn.preprocessing import MinMaxScaler 

scaler = MinMaxScaler()

# import tensorflow as tf

# print(tf.__version__)
# model = tf.keras.models.load_model('finalmodel')
# print("Num GPUs Available: ", len(tf.config.list_physical_devices('GPU')))

# model = tf.keras.models.load_model('finalmodel')

url = 'https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=IBM&apikey=G421HYOFY0DYAGOA&outputsize=full&datatype=csv'
r = requests.get(url, allow_redirects=True)
# data = r.json()
print(type(r))
open('daily_ibm_data', 'wb').write(r.content)
df = pd.read_csv('daily_ibm_data')
df['timestamp']=pd.to_datetime(df['timestamp'],errors='coerce')
df.set_index('timestamp', inplace=True)
print(df.head())

def get_RSI(df,input_date_index):
    gain = 0
    loss = 0
    i = df['close'].iloc[input_date_index]
    for j in df['close'][input_date_index+1:input_date_index+15]:
        if j > i:
            loss += (j-i)/j
        if j < i:
            gain += (i-j)/j
        i = j
    RSI = 1-(1/(1+(gain/loss)))
    return RSI

def get_OBVscaled(df):
    df['OBV'] = df['volume']

    for i in range(len(df['volume'])-1):
        if df['close'][-2-i] > df['close'][-1-i]:
            df['OBV'][-2-i] = df['OBV'][-1-i] + df['volume'][-2-i]
        elif df['close'][-2-i] < df['close'][-1-i]:
            df['OBV'][-2-i] = df['OBV'][-1-i] - df['volume'][-2-i]
        else:
            df['OBV'][-2-i] = df['OBV'][-1-i]

    df['OBVscaled'] = scaler.fit_transform(df[['OBV']])
    # x = scaler.fit_transform(df[['OBV']])
    # print(x)

    return df

# df1 = df.copy()
df2 = get_OBVscaled(df)
# df2['close'] = scaler.fit_transform(df2[['closed']])
df2['closescaled'] = scaler.fit_transform(df2[['close']])
print(df2.head())
