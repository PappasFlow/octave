%%
clear all
close all
clc

x = input("ingrese orden de la matriz: ")

admitanceMatrix=zeros(x,x);
voltageMatrix=zeros(x,1);
currentMatrix=zeros(x,1);

for i=1:1:x
    for j=i:1:x
      if(j==i)
        temp = input(strcat('ingrese el valor de la admitancia propia  ', num2str(i),'x',num2str(j), ' :'));
      else
        temp = input(strcat('ingrese el valor de las admitancias  ',num2str(j),'x',num2str(i), ' y  ', num2str(i),'x',num2str(j), ' :'));
      endif
        admitanceMatrix(i,j)=temp;
        admitanceMatrix(j,i)=temp
    end
end
admitanceMatrix

%%
for i=1:1:x
    currentMatrix(i,1) = input(strcat('ingrese el valor de la corriente ', num2str(i), ' :'))
end
currentMatrix


%%
voltageMatrix=linsolve(admitanceMatrix,currentMatrix);
for i=1:1:x
disp(['V',num2str(i),'= ',num2str(voltageMatrix(i,1))])
end

%%
voltageMatrixPol.mod=voltageMatrix;
voltageMatrixPol.angleRad=voltageMatrix;
voltageMatrixPol.angleDeg=voltageMatrix;
for i=1:1:x
    [voltageMatrixPol.angleRad(i,1),voltageMatrixPol.mod(i,1)]=cart2pol(real(voltageMatrix(i,1)),imag(voltageMatrix(i,1)));
    voltageMatrixPol.angleDeg(i,1)=rad2deg(voltageMatrixPol.angleRad(i,1));
end
%%

for i=1:1:x
  disp(['Forama polar V',num2str(i)])
  disp(['Modulo= ',num2str(voltageMatrixPol.mod(i,1)),' Angulo= ',num2str(voltageMatrixPol.angleDeg(i,1)),'º'])
    %%voltageMatrixPol.mod(i,1)
    %%voltageMatrixPol.angleDeg(i,1)
end