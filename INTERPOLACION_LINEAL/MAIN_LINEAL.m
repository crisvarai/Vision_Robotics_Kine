clc 
clf
X1_ini =input( 'x inicial :');
Y1_ini = input ('y inicial :');
X1_fin = input ('x final :');
Y1_fin = input ('y final :');
B=0.05;
v=[];
D=[];
E=[];
for t=0:.02:1; 
x = X1_ini + t*(X1_fin - X1_ini);
y = Y1_ini + t*(Y1_fin - Y1_ini);
[J1, J2]= IK2GDL(x,y,2,1);
robot2DOF(J1,J2,2,1,v,D,E);
v=[v,t];
D=[D,J1];
E=[E,J2];

pause(B);
end
