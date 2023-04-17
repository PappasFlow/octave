%%
clear all
close all
clc
disp('POTENCIA COMPLEJA')
I = input("ingrese Corriente Fuente: ")
V = input("ingrese Voltage Fuente: ")
Pot=[V*conj(I)]
%
%
disp('---------------------------------------------------------------')
%
disp(['P= ',num2str(real(Pot)),' W'])

  if(imag(Pot)<0)
    disp(['Q= ',num2str(imag(Pot)),' VAR [Capasitivo o en Adelanto]'])
  endif
  if(imag(Pot)>0)
    disp(['Q= ',num2str(imag(Pot)),' VAR [Inductivo o en Atraso]'])
  endif
  if(imag(Pot)==0)
    disp('Q=0 VAR [Sin parte reactiva]')
  endif
  
disp(['S= ',num2str(abs(Pot)),' VA'])
disp(['Phi= ',num2str(rad2deg(angle(Pot))),' °'])
disp(['Factor Potencia= ',num2str(cos(angle(Pot)))])
%
disp('---------------------------------------------------------------')


