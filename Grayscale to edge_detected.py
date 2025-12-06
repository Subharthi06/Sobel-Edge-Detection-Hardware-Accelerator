import numpy as np
import cv2
from google.colab.patches import cv2_imshow

# Read the integer matrix from the text file
integer_matrix = np.loadtxt('/content/grayscale_matrix.txt', dtype=int)

# Generate the grayscale image from the integer matrix
gray_image = integer_matrix.astype(np.uint8)

# Display the grayscale image
cv2_imshow(gray_image)

# Read the integer matrix from the text file
integer_matrix = np.loadtxt('/content/filtered matrix.txt', dtype=int)

# Generate the grayscale image from the integer matrix
final_image = integer_matrix.astype(np.uint8)

# Display the grayscale image
cv2_imshow(final_image)
