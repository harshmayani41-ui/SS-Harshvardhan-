clc
clear
close all

a = 10;
b = 5;

disp('Addition:')
disp(a+b)

disp('Subtraction:')
disp(a-b)

disp('Multiplication:')
disp(a*b)

disp('Division:')
disp(a/b)

t = 0:0.001:2*pi;

y1 = sin(t);
y2 = sin(5*t);
y3 = 2*sin(t);
y4 = 2*sin(2*t);

subplot(2,2,1)
plot(t,y1)
xlabel('Time')
ylabel('Amplitude')
title('sin(t)')

subplot(2,2,2)
plot(t,y2)
xlabel('Time')
ylabel('Amplitude')
title('sin(5t)')

subplot(2,2,3)
plot(t,y3)
xlabel('Time')
ylabel('Amplitude')
title('2sin(t)')

subplot(2,2,4)
plot(t,y4)
xlabel('Time')
ylabel('Amplitude')
title('2sin(2t)')