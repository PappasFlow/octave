clc
disp('POLOS 2° ORDEN')
A = input("Ingrese termino A: ")
B = input("Ingrese termino B: ")
C = input("Ingrese termino C: ")
pol1=(-B+(B*B-A*C*4)^0.5)/(2*A)
pol2=(-B-(B*B-A*C*4)^0.5)/(2*A)