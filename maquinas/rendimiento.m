clear all
close all
clc

disp('Rendimientos transformador')
Po = input("Potencia ensayo vacio: ")
Pcc = input("Potencia ensayo corto circuito: ")
Sn = input("Potencia nominal (Aparente): ")
C = input("Indice de carga: ")
fp = input("Factor de potencia o cos(fi): ")
disp('')

Rendimiento= (Sn*fp*C)/((Sn*fp*C)+Po+(Pcc*(C^2)))

disp('')
disp('Rendimientos Maximos Transformador')
C=sqrt(Po/Pcc)
S=Sn*C
Rendimiento= (Sn*fp*C)/((Sn*fp*C)+Po+(Pcc*(C^2)))
