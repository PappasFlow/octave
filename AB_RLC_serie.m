clc
disp('Frecuencias de corte w1 y w2 mas Ancho de Banda RLC SERIE')

L = input("ingrese valor Inductor L: ")
C = input("ingrese valor Capacitor C: ")
R = input("ingrese valor Resistor R: ")

disp('--------------------------------------------------')
w1=abs([(-R/(2*L))+([(R/(2*L))^2] +(1/(L*C)))^0.5])
w2=abs([(-R/(2*L))-([(R/(2*L))^2 ]+(1/(L*C)))^0.5])
AB=w2-w1
