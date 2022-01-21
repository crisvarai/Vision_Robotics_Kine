
% run startup_rvc   Correr 1 vez para cargar la librería

L = 5;
T = 2.5;

L1 = Link('d', 13, 'a', 0, 'alpha', -pi/2, 'offset', 0);
L2 = Link('d', -L, 'a', 8, 'alpha', 0, 'offset', 0);
L3 = Link('d', 0, 'a', 0, 'alpha', -pi/2, 'offset', -pi/2);
L4 = Link('d', 8, 'a', 0, 'alpha', pi/2, 'offset', 0);
L5 = Link('d', 0, 'a', 0, 'alpha', pi/2, 'offset', pi/2);
L6 = Link('d', T, 'a', 0, 'alpha', 0, 'offset', 0);

Azimov = SerialLink( [ L1 L2 L3 L4 L5 L6 ] );

Azimov.plot( [ 0 0 0 0 0 0 ] );

Azimov.teach();