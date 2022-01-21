function [ang1a, ang2a]= IK2GDL (x, y, L1, L2)
clc 
clf
disp('Inverse Kinematics 2-DOF Planar Robot');
% L1 = 2;
% L2 = 1;fprintf ('los angulos son en codo arriba son:')
%  [th] = [ang1a, ang2a]
A= (x*x+y*y-L1*L1-L2*L2)/(2*L1*L2);
ang2a= atan2(sqrt(1-(A)^2),(A));
ang1a= atan2(y,x) - atan2((L2*sin(ang2a)),(L1+L2*cos(ang2a)));
ang1a =ang1a*180/pi
ang2a=  ang2a*180/pi
%ang2b= atan2(-sqrt(1-(A)^2),(A));
%ang1b= atan2(y,x) - atan2((L2*sin(ang2b)),(L1+L2*cos(ang2b)));

%fprintf ('los angulos son en codo abajo son:')
%th=[ang1b*180/pi, ang2b*180/pi]
end