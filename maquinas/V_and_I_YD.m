%YD
clear all
close all
clc

disp('Calculos V e I transformador YD')
disp('Calculos unicamente de primario a secundario - si no es asi coloque 1/m')
disp('Recordar que m=Vf1/Vf2=N1/N2=If2/If1   [Nunca valores de linea]')

disp('')
Vl1 = input("ingrese Voltaje Linea 1: ")
Il1 = input("ingrese corriente de Linea 1: ")
m = input("ingrese relacion transformacion m: ")

disp('')
disp('Primario')
Vl1
Il1
Vf1=Vl1/sqrt(3)
If1=Il1

disp('secundario')
Vl2=(Vf1/m)
Il2=(If1*m)*sqrt(3)
Vf2=(Vf1/m)
If2=(If1*m)
