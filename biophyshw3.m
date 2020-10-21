clear; close all; clc;
syms h(r) ;
eqn= 0 == -2*diff(h,r,2)/r + 2*diff(h,r,1)/(r^2) + 4*diff(h,r,3) + 2*r*diff(h,r,4) ;
Dh = diff(h,r,1);
cond = [Dh(5)== 0, Dh(100)==0, h(5)==50, h(100)==0];
hsolution = dsolve(eqn,cond)
ezplot(hsolution,[5,100])
xlabel('radius, r (nm)') 
ylabel('height, h(r) (nm)') 
title('h(r) plot for BioPhys HW#3, part iv')