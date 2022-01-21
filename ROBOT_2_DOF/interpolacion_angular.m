X1_ini = input('Posición inicial de X = ');
Y1_ini = input('Posición inicial de Y = ');

X2_fin = input('Posición final de X = ');
Y2_fin = input('Posición final de Y = ');

[J1_ini, J2_ini] = robot2DOF_inv(X1_ini,Y1_ini,2,1);
[J1_fin, J2_fin] = robot2DOF_inv(X2_fin,Y2_fin,2,1);

% J1_ini = input('J1 inicial = ');
% J1_fin = input('J1 final = ');
% 
% J2_ini = input('J2 inicial = ');
% J2_fin = input('J2 final = ');

D = 0.01;

for t = 0 : 0.02 : 1
    J1 = J1_ini+t*(J1_fin-J1_ini);
    J2 = J2_ini+t*(J2_fin-J2_ini);
    robot2DOF(J1,J2,2,1)
    pause(D);
end