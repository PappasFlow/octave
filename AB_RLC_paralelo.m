clc
disp('Frecuencias de corte w1 y w2 mas Ancho de Banda RLC PARALELO')

L = input("ingrese valor Inductor L: ")
C = input("ingrese valor Capacitor C: ")
R = input("ingrese valor Resistor R: ")

disp('--------------------------------------------------')
w1=abs([(-1/(C*R))+([(1/(R*C))^2] +(4/(L*C)))^0.5]/2)
w2=abs([(-1/(C*R))-([(1/(R*C))^2] +(4/(L*C)))^0.5]/2)
AB=w2-w1
