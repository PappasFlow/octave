clear all
close all
clc

disp('Calculos Prueba en vacio transformador')
V = input("ingrese Voltaje: ")
I = input("ingrese Corriente: ")
P = input("ingrese Potencia: ")
%%
disp('')
disp('Resultados:')
cos_fi=P/(V*I)
fi=rad2deg(acos(cos_fi))

I_Rfe=I*cos(deg2rad(fi))
I_Xmu=I*sin(deg2rad(fi))

Rfe=V/I_Rfe
Xmu=V/I_Xmu
