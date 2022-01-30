import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' 

import numpy as np
from flask import Flask, request, render_template
import pickle
import pandas as pd
import tensorflow as tf

app = Flask(__name__)
model = tf.keras.models.load_model('finalmodel')
ref_df = pd.read_csv('referencedf.csv')

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/predict',methods=['POST'])
def predict():
    
    date = [x for x in request.form.values()]
    date = date[0]

    try:
        date_index = np.where(np.array(ref_df['timestamp'])==date)[0].item()
    except:
        return render_template('index.html', prediction_text=f'ERROR: Enter Valid Date. It must be a weekday in the past. (2000-01-01 to today) ')
        
    close_scaled = ref_df['closescaled'][date_index]
    OBV_scaled = ref_df['OBVscaled'][date_index]
    RSI = ref_df['RSI'][date_index]

    final_features = np.array([[[close_scaled, OBV_scaled, RSI]]])
    prediction = model.predict([final_features])
    minclose = 55.07
    maxclose = 215.8
    def get_actual(scaled, min, max):
        return min + scaled*(max-min)
    output = get_actual(prediction[0][0], minclose, maxclose)
    # output = prediction[0][0]
    return render_template('index.html', prediction_text=f'Predicted Close Price for Tomorrow is: $ {output}')  


if __name__ == "__main__":
    app.run(debug=True)