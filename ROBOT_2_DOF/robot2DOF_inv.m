function [ th1, th2 ] = robot2DOF_inv( x, y, L1, L2 )

% clc
% clf

disp('Inverse Kinematics 2-DOF Planar Robot');

%L1 = 2;
%L2 = 1;

th2 = acosd((x^2+y^2-L1^2-L2^2)/(2*L1*L2));  % Ángulo 1

th1 = atan2d(y,x)-atan2d(L2*sind(th2),L1+L2*cosd(th2));  % Ángulo 2

end