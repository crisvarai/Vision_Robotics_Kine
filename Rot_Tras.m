
% Ejercicio Traslación-Rotación en 3D
% Ma 20 abril, 2021
% Autor: Cristian Vallejo

Px =  8;
Py = -4;
Pz = 12;

alfa = 90;

Tras = [ 1 0 0 Px ; 
         0 1 0 Py ;
         0 0 1 Pz ;
         0 0 0 1 ]
     
Rot_X = [ 1     0           0      0 ;
          0 cosd(alfa) -sind(alfa) 0 ;
          0 sind(alfa)  cosd(alfa) 0 ;
          0     0           0      1 ]
      
Suvw = [ -3 ;
          4 ;
        -11 ;
          1 ]
      
T = Rot_X * Tras

Sxyz = T * Suvw