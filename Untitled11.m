% equiripple FIR filter
 clc;
 close all;
 clear all;
 Fs = 1000;
 Fp = input('Input the pass band frequency Fp = ');
 Fst = input('Input the stop band frequency Fst = ');
 Ap = input('Input the pass band attenuation Ap = ');
 Ast = input('Input the stop band attenuation Ast = ');
 d = fdesign.lowpass('Fp,Fst,Ap,Ast');
 Hd = design(d,'equiripple');
 fvtool(Hd);