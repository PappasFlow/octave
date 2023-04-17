clc
disp('Calculo Sistema trifasico perfecto carga tipo Triangulo')

Vl = input("ingrese Voltage Linea [Vl]: ")
Z = input("ingrese Impedancia [Z]: ")
%
disp('------------------------------------------')
disp('Tenciones de Linea')
disp(['Vab','= modulo(',num2str(Vl),') angulo(120)'])
disp(['Vbc','= modulo(',num2str(Vl),') angulo(0)'])
disp(['Vca','= modulo(',num2str(Vl),') angulo(240)'])
%
Vf=(abs(Vl)/(3^0.5));
disp('------------------------------------------')
disp('Tenciones de Face')
disp(['Van','= modulo(',num2str(Vf),') angulo(90)'])
disp(['Vbn','= modulo(',num2str(Vf),') angulo(-30)'])
disp(['Vcn','= modulo(',num2str(Vf),') angulo(-150)'])
%%
Ifs=((abs(Vl)/abs(Z)));
Il=(Ifs*(3^0.5));
disp('------------------------------------------')
disp('Corrientes Linea')
disp(['Ia','= modulo(',num2str(Il),') angulo(',num2str(120-rad2deg(angle(Z))-30),')'])
disp(['Ib','= modulo(',num2str(Il),') angulo(',num2str(-rad2deg(angle(Z))-30),')'])
disp(['Ic','= modulo(',num2str(Il),') angulo(',num2str(240-rad2deg(angle(Z))-30),')'])
%%
disp('------------------------------------------')
disp('Corrientes Face')
disp(['Iab','= modulo(',num2str(Ifs),') angulo(',num2str(120-rad2deg(angle(Z))),')'])
disp(['Ibc','= modulo(',num2str(Ifs),') angulo(',num2str(-rad2deg(angle(Z))),')'])
disp(['Ica','= modulo(',num2str(Ifs),') angulo(',num2str(240-rad2deg(angle(Z))),')'])
disp('------------------------------------------')
disp('Potencia en cada carga')
S=[(Vl*Il)/(3^0.5)]
P=S*cos(angle(Z))
Q=S*sin(angle(Z))
disp('------------------------------------------')
disp('Potencia Total')
St=[(Vl*Il)*(3^0.5)]
Pt=St*cos(angle(Z))
Qt=St*sin(angle(Z))