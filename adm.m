%%suma de admitancias ingresando impedancias
%%util en metodo nudos
clc

x = input("ingrese Cantida de elementos: ")
  Y=0;
  Impedancias=zeros(x,1);
  
  for i=1:1:x
    Impedancias(i,1) = input(strcat('ingrese el valor de la impedancia ', num2str(i), ' :'));
  end
  
  for i=1:1:x
    Y=Y+(1/Impedancias(i,1));
  end
  
Y