import numpy as np
import cv2

# Cargar la imagen
img = cv2.imread('arte_digital.png',1)

# Desplegar la imagen
cv2.imshow('image',img)
cv2.waitKey(0)
cv2.destroyAllWindows()
