clear all
close all
clc

disp('Calculos Prueba en corto transformador')
V = input("ingrese Voltaje: ")
I = input("ingrese Corriente: ")
P = input("ingrese Potencia: ")
%%
disp('')
disp('Resultados:')
cos_fi=P/(V*I)
fi=rad2deg(acos(cos_fi))

V_Rcc=V*cos(deg2rad(fi))
V_Xcc=V*sin(deg2rad(fi))

Rcc=V_Rcc/I
Xcc=V_Xcc/I

R1=Rcc/2
X1=Xcc/2
