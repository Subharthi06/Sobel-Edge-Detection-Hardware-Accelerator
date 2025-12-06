import cv2
import numpy as np

# Upload the image file to Google Colab's runtime environment

# Load the uploaded image
image = cv2.imread('/content/HSCD_Lab3.jpg')

# Convert the image to grayscale
gray_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

# Convert the grayscale image to an integer matrix
integer_matrix = gray_image.astype(int)

# Save the integer matrix to a text file
np.savetxt('/content/grayscale_matrix.txt', integer_matrix, fmt='%d')

print("Integer matrix saved to grayscale_matrix.txt")
