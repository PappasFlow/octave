clc
disp('Calculo Sistema trifasico perfecto carga tipo Estrella')

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
Il=(abs(Vl)/(abs(Z)*(3^0.5)));
%%
disp('------------------------------------------')
disp('Corrientes Linea = Corrientes Face')
disp(['Ia','= modulo(',num2str(Il),') angulo(',num2str(90-rad2deg(angle(Z))),')'])
disp(['Ib','= modulo(',num2str(Il),') angulo(',num2str(-30-rad2deg(angle(Z))),')'])
disp(['Ic','= modulo(',num2str(Il),') angulo(',num2str(-150-rad2deg(angle(Z))),')'])
%%
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