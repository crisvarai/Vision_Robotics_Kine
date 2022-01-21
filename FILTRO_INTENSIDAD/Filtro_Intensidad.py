import numpy as np
import cv2

#   1. Abrir imágenes Fuente y Diseño
#       a) mismas dimensiones
#       b) escala de grises

fue = cv2.imread('arte_digital_fue.png',0)
des = cv2.imread('arte_digital_des.png',0)

#   2. Mostrar las imágenes en ventanas separadas

#cv2.imshow('fuente',fue)
#cv2.imshow('destino',des)
#cv2.waitKey(0)
#cv2.destroyAllWindows()

#   3. Leer las dimensiones de una de las imágenes (W y H)

(H,W) = fue.shape
#print(H,W)

#   4. Definir un umbral (th)

th1 = 170
th2 = 120

#   5. Recorrer todos los pixeles de la imagen y aplicar filtro
#       a) Para y = 0, mientras y < H, incrementar y
#           1) Para x = 0, mientras x < W, incrementar x
#               i. Leer la intensidad (I) en la coordenada (x,y) de la imagen Fuente
#               ii. Si I > Th
#                   1) Escribir el valor de I en la coordenada (x,y) de la imagen Destino
#               iii. Sino
#                   1) Escribir el valor de 0 ó 255 en la coordenada (x,y) de la imagen Destino

for y in range(1,H):
    for x in range(1,W):
        I = fue[y,x]
        #if I > th1:
        #if I < th1:
        if I < th1 and I > th2:
            des[y,x] = I
        else:
            des[y,x] = 0
            
#   6. Mostrar la imagen Destino

print("proceso terminado")
cv2.imshow('fuente',fue)
cv2.imshow('destino',des)
cv2.waitKey(0)
cv2.destroyAllWindows()

#   7. Esperar para ver resultados
