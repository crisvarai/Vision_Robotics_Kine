clc;
close all;
clear all;

X1_ini = input('Posición inicial de X = ');
Y1_ini = input('Posición inicial de Y = ');

X2_fin = input('Posición final de X = ');
Y2_fin = input('Posición final de Y = ');

%[J1_ini, J2_ini] = robot2DOF_inv(X1_ini,Y1_ini,2,1);
%[J1_fin, J2_fin] = robot2DOF_inv(X2_fin,Y2_fin,2,1);

% J1_ini = input('J1 inicial = ');
% J1_fin = input('J1 final = ');
% 
% J2_ini = input('J2 inicial = ');
% J2_fin = input('J2 final = ');

D = 0.001;

for t = 0 : 0.02 : 1
    figure(1);
    X = X1_ini+t*(X2_fin-X1_ini);
    Y = Y1_ini+t*(Y2_fin-Y1_ini);
    [J1, J2] = robot2DOF_inv(X,Y,2,1);
    
    subplot(2,2,1);
    hold on
    plot(t,J1,'*','LineWidth',2,'Color','b');
    title('Varicación de J1');
    
    subplot(2,2,2);
    hold on
    plot(t,J2,'*','LineWidth',2,'Color','b');
    title('Varicación de J2');
    
    subplot(2,2,[3,4]);
    [Px, Py] = robot2DOF(J1,J2,2,1);
    hold on
    plot(Px,Py,'r+');
    title('Interpolación Lineal');
    
    pause(D);
end