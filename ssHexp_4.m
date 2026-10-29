
clc
clear
close all

% linearity
x1 = [1 0 -1 2];
x2 = [1 -1 1 -1];

a = input('Enter the value of a: ');
b = input('Enter the value of b: ');
d = input('Enter the delay: ');

y1 = 2.^x1;
y2 = 2.^x2;
ycomb = 2.^(a*x1 + b*x2);
yrhs = a*y1 + b*y2;

if isequal(ycomb,yrhs)
    disp('The system is linear')
else
    disp('The system is nonlinear')
end

xdel = [zeros(1,d) x1];
ydel = 2.^xdel;
ydelay = [zeros(1,d) y1];

if isequal(ydel,ydelay)
    disp('The system is time invariant')
else
    disp('The system is time variant')
end

figure
subplot(2,2,1)
stem(x1)
xlabel('n')
ylabel('x1')
title('Input x1')

subplot(2,2,2)
stem(y1)
xlabel('n')
ylabel('y1')
title('Output T(x1)')

subplot(2,2,3)
stem(xdel)
xlabel('n')
ylabel('Delayed input')
title('Delayed input')

subplot(2,2,4)
stem(ydel)
xlabel('n')
ylabel('Delayed output')
title('Output of delayed input')

% energy
x = [1 -1 2 -2 3];
E = sum(abs(x).^2);
disp(['Energy = ',num2str(E)])

if E < Inf
    disp('The signal is stable')
else
    disp('The signal is not stable')
end

% even and odd
x = [1 2 3 4 5];
xe = (x + x(end:-1:1))/2;
xo = (x - x(end:-1:1))/2;

figure
subplot(1,3,1)
stem(x)
xlabel('n')
ylabel('x(n)')
title('Original signal')

subplot(1,3,2)
stem(xe)
xlabel('n')
ylabel('xe(n)')
title('Even component')

subplot(1,3,3)
stem(xo)
xlabel('n')
ylabel('xo(n)')
title('Odd component')