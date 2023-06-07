clear all
close all
clc

disp('Calculos Perdidas transformador')
Rcc = input("ingrese Rcc: ")
Xcc = input("ingrese Xcc: ")
V1n = input("ingrese V1n: ")
I1n = input("ingrese I1n: ")
disp('')
disp('datos para perdida total - si no hace falta poner cualquier valor')
C = input("ingrese indice de carga C: ")
fac_pot = input("ingrese factor potencia o cos(fi): ")
%%
disp('')
disp('Resultados no porcentuales:')
E_Rcc=(I1n*Rcc)/V1n
E_Xcc=(I1n*Xcc)/V1n
E_tot=(E_Rcc*C*fac_pot) + (E_Xcc*C*sin(acos(fac_pot)))
%%
disp('')
disp('Resultados porcentuales:')
E_Rcc=E_Rcc*100
E_Xcc=E_Xcc*100
E_tot=E_tot*100

