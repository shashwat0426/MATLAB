clc;
close all; 
syms z; 
syms a; 
syms f(z); 
f(z) = input('Please input a function to obtain its inverse z transform '); 
disp(iztrans(f(z)));