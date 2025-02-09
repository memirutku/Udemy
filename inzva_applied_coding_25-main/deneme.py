import csv
import torch
import numpy as np
data_path="IMDB_Dataset.csv"
print(data_path)
wine_numpy = np.loadtxt(data_path, dtype=np.loadtxt, delimiter=";", skiprows=1)

print(wine_numpy)