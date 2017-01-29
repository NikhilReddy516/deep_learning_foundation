import pandas as pd
from sklearn import linear_model
from numpy import genfromtxt
import matplotlib.pyplot as plt

#read data
data = pd.read_csv('challenge_dataset.txt', header=None)
x_values = data[[0]]
y_values = data[[1]]

#train model on data
model = linear_model.LinearRegression()
model.fit(x_values, y_values)

#visualize results
plt.scatter(x_values, y_values)
plt.plot(x_values, model.predict(x_values))
plt.show()
