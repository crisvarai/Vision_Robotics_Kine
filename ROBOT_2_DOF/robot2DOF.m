function [ Px, Py ] = robot2DOF( th1, th2, L1, L2 )

% clc
clf

disp('Forward Kinematics 2-DOF Planar Robot');

% L1 = 2;
% L2 = 1;

PxT = L1*cosd(th1);   % Elbow coordinates
PyT = L1*sind(th1);

Px =  L1*cosd(th1)+L2*cosd(th1+th2);  % Tip coordinates
Py =  L1*sind(th1)+L2*sind(th1+th2);

hold on

line([0,PxT],[0,PyT],'LineWidth',10,'Color','b'); %Arm line
line([PxT,Px],[PyT,Py],'LineWidth',5,'Color','k'); %Arm line

plot(0,0,'o','LineWidth',10,'Color','r'); % Motor in the base
plot(PxT,PyT,'o','LineWidth',10,'Color','r'); % Motor in the elbow
plot(Px,Py,'o','LineWidth',5,'Color','g'); % Robot ?s tip

hold off

axis([-(L1+L2) (L1+L2) -(L1+L2) (L1+L2)])
grid on

end