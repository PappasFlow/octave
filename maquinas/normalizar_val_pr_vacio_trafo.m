clear all
close all
clc

disp('Calculos normalizar valores Prueba en corto transformador')
disp('para cuando I de la prueba no coincide con la nominal')
V_corto = input("ingrese Voltaje corto: ")
I_corto = input("ingrese Corriente corto: ")
P_corto = input("ingrese Potencia corto: ")
I_nominal = input("ingrese Corriente Nominal: ")
%%
disp('')
disp('Resultados:')
Icc=I_nominal
Vcc=(V_corto*I_nominal)/I_corto
Pcc=(P_corto*(I_nominal^2))/(I_corto^2)
