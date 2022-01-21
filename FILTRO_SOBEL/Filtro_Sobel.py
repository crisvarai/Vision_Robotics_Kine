import numpy as np
import cv2
import math

#   1. Abrir imágenes Fuente y Diseño
#       a) mismas dimensiones
#       b) escala de grises

#fue = cv2.imread('arte_digital_fue.png',0)
#des = cv2.imread('arte_digital_des.png',0)

fue = cv2.imread('rolando_fue.jpg',0)
des = cv2.imread('rolando_des.jpg',0)

#   2. Mostrar las imágenes en ventanas separadas

#cv2.imshow('fuente',fue)
#cv2.imshow('destino',des)
#cv2.waitKey(0)
#cv2.destroyAllWindows()

#   3. Leer las dimensiones de una de las imágenes (W y H)

(H,W) = fue.shape
#print(H,W)

#   4. Definir un umbral (th)

th1 = 10
#th2 = 120

#   5. Recorrer todos los pixeles de la imagen y aplicar filtro
#       a) Para y = 0, mientras y < H, incrementar y
#           1) Para x = 0, mientras x < W, incrementar x
#               i. Leer la intensidad (I) en la coordenada (x,y) de la imagen Fuente
#               ii. Si I > Th
#                   1) Escribir el valor de I en la coordenada (x,y) de la imagen Destino
#               iii. Sino
#                   1) Escribir el valor de 0 ó 255 en la coordenada (x,y) de la imagen Destino
#
#   5.1 Integrar máscara de Sobel para el detector de contornos

for y in range(1,H-1):
    for x in range(1,W-1):

        a = fue[y-1,x-1]
        b = fue[y-1,x]
        c = fue[y-1,x+1]
        d = fue[y,x-1]
        e = fue[y,x+1]
        g = fue[y+1,x-1]
        h = fue[y+1,x]
        i = fue[y+1,x+1]

        Gx = ((c+2*e+i)-(a+2*d+g))/8
        Gy = ((g+2*h+i)-(a+2*b+c))/8

        G = math.sqrt(Gx*Gx+Gy*Gy);

        if G > th1:
            des[y,x] = 0
        else:
            des[y,x] = 255
            
#   6. Mostrar la imagen Destino

print("proceso terminado")
cv2.imshow('fuente',fue)
cv2.imshow('destino',des)
cv2.waitKey(0)
cv2.destroyAllWindows()

#   7. Esperar para ver resultados
