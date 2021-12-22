 clc;
 close all;
 clear all;
 wc = input('Input the cut-off frequency in radians(less than pi)');
 M = input('Input the length of ideal filter');
 if wc > pi
error('cut-off frequency should be less than pi')
return
end
 alpha = (M-1)/2;
 n = 0:1:(M-1);
 m = n - alpha + eps;
 hd = sin(wc*m)./(pi*m);
stem(n,hd);
title('Impulse response of ideal low pass filter');
xlabel('n');
ylabel('hd(n)');