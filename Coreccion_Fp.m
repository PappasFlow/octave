%%
clear all
close all
clc
disp('CORRECCON FACTOR DE POTENCIA EN RETRASO')
Fpi = input("ingrese Factor de Potencia Inicial : ")
Fpf = input("ingrese Factor de Potencia Final : ")
P = input("ingrese Potencia Activa : ")
V = input("ingrese Modulo del Voltaje : ")
w = input("ingrese Velocidad angular w : ")

Cp=(P*(tan(acos(Fpi))-tan(acos(Fpf))))/(V*V*w);
Phi=rad2deg(acos(Fpi));
Phf=rad2deg(acos(Fpf));
%%
disp('______________________________________________')
disp(['Capasitores en Paralelo:  ',num2str(Cp),' F'])
disp(['Angulo Phi Inicial:  ',num2str(Phi),' °'])
disp(['ANgulo Phi Final:  ',num2str(Phf),' °'])
%%
disp(' ')
disp('Antes de la Correccion')
disp(['P=',num2str(P),' w'])
disp(['Q=',num2str((P/Fpi)*sin(acos(Fpi))),' VAR'])
disp(['S=',num2str(P/Fpi),' VA'])
%%
disp('Despues de la Correccion')
disp(['P=',num2str(P),' w'])
disp(['Q=',num2str((P/Fpf)*sin(acos(Fpf))),' VAR'])
disp(['S=',num2str(P/Fpf),' VA'])
disp('______________________________________________')


