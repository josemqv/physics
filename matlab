# Import package
import scipy.io
import matplotlib.pyplot as plt
import numpy as np


# Load MATLAB file: mat
file='albeck_gene_expression.mat'

mat=scipy.io.loadmat(file)
# Print the datatype type of mat
print(type(mat)) 

import matplotlib.pyplot as plt
# Print the keys of the MATLAB dictionary
print(mat.keys())# Import package
import scipy.io

# Load MATLAB file: mat
file='albeck_gene_expression.mat'

mat=scipy.io.loadmat(file)
# Print the datatype type of mat
print(type(mat)) 

import matplotlib.pyplot as plt


# Print the type of the value corresponding to the key 'CYratioCyt'
print(type(mat['CYratioCyt']))

# Print the shape of the value corresponding to the key 'CYratioCyt'
print(np.shape(mat['CYratioCyt']))

# Subset the array and plot it
data = mat['CYratioCyt'][25, 5:]
fig = plt.figure()
plt.plot(data)
plt.xlabel('time (min.)')
plt.ylabel('normalized fluorescence (measure of expression)')
plt.show()
