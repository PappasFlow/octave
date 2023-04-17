%% M modulo delnumero
%% A angulo del numero en grados °

function [ncom]=rec(M,A)
  
  ncom= (M*cos(deg2rad(A)))+(M*sin(deg2rad(A))*i)
  
  return
  endfunction