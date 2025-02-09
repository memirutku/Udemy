import csv

import numpy as np
import pandas as pd
import os

# You can change the framework as you like
# Only restriction is that you should be able to save, load and make predictions with it.
import torch
import torch.nn as nn


# TO FILL
def load_model(model_path: str):
    """ Loads and returns model from given path """
    dataset=pd.read_csv(model_path)  # normal with open yerine pands kullanmak daha kolay ve daha verimli oluyor
    print(dataset.head())






""""
    print (model_path)
    with open (model_path,"r") as model_csv:
        model_reader=csv.reader(model_csv)
        for line in model_reader:
            print (line)

    return None
"""

# TO FILL
def predict(sample) -> str:
    """ 
    Input: sample (str): single sample containing a movie review.
    Returns: the sentiment type: ["positive", "negative"]
    """
    # load model, vectorizer
    # preprocess sample
    # predict
    # return sentiment type: ["positive", "negative"]
    return None


"""
# this is a pseudo test function to give an idea, you can delete it if you want
def test_model(test_sample: str, label: str) -> None:
    result = predict(test_sample)
    return result == label
"""