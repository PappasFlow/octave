%Ecc
clear all
close all
clc

disp('Calculos Rcc Xcc transformador a partir de placa caracteristica ')
disp('Recordar que en trifasica S y V deben ser de fase')

disp('')
Pn = input("ingrese Potencia Nominal: ")
Vn = input("ingrese Voltage Nominal: ")
EZccx100 = input("ingrese Valor Ecc porcentual: ")
EXccx100 = input("ingrese Valor Excc porcentual: ")

disp('')
disp('respuestas')
ERccx100 = sqrt(EZccx100^2 - EXccx100^2 )
In=Pn/Vn
disp('En ensayo corto:')
Vzcc=(EZccx100/100)*Vn
Vrcc=(ERccx100/100)*Vn
Vxcc=(EXccx100/100)*Vn
disp('Valores inpedancias')
Zcc=Vzcc/In
Rcc=Vrcc/In
Xcc=Vxcc/In
