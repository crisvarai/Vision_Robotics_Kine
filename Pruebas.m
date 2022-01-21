ang2 = 25;
T = 0.001;
for ang1 = 0 : 1 : 90
    [x, y] = robot2DOF(ang1,ang2,2,1)
    pause(T)
end