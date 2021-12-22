FREQUENCY SHIF KEYING

clear;
clc;
b = input('Enter the Bit stream \n '); %b = [0 1 0 1 1 1 0];
fc = input('Enter carrier frequency = ');
n = length(b);
t = 0:.01:n;
x = 1:1:(n+1)*100;
for i = 1:n
 if (b(i) == 0)
 b_p(i) = -1;
 else
 b_p(i) = 1;
 end
 for j = i:.1:i+1
 bw(x(i*100:(i+1)*100)) = b_p(i);
 end
end
bw = bw(100:end);
wo = 2*(2*pi*fc*t);
W = 1*(2*pi*fc*t);
sinHt = sin(wo+W);
sinLt = sin(wo-W);
st = sin(wo+(bw).*W);
subplot(4,1,1)
plot(t,bw)
grid on ; 
ylabel('Amp');
xlabel('time');
title('input signal');
axis([0 n -2 +2])
subplot(4,1,2)
plot(t,sinHt)
grid on ;
ylabel('Amp');
xlabel('time');
title('High frequency carrier signal');
axis([0 n -2 +2])
subplot(4,1,3)
plot(t,sinLt)
grid on ;
ylabel('Amp');
xlabel('time');
title('Low frequency carrier signal');
axis([0 n -2 +2])
subplot(4,1,4)
plot(t,st)
grid on ;
ylabel('Amp');
xlabel('time');
title('Modulated signal');
axis([0 n -2 +2])
