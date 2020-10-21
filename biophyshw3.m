clear; close all; clc;
syms h(r) ;
eqn= 0 == 2*diff(h,r,2)/r - 2*diff(h,r)/(r^2) + 8*diff(h,r,3) + 2*r*diff(h,r,4) ;
Dh = diff(h,r);
cond = [Dh(5)== 0, Dh(100)==0, h(0)==50];
hsolution = dsolve(eqn,cond)

