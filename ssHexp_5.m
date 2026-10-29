clc
clear
close all

x = input('Enter the first discrete-time signal: ');
h = input('Enter the second discrete-time signal: ');

y = manual_convolution(x, h);

subplot(3,1,1)
stem(x)
xlabel('n')
ylabel('x(n)')
title('First Signal')

subplot(3,1,2)
stem(h)
xlabel('n')
ylabel('h(n)')
title('Second Signal')

subplot(3,1,3)
stem(y)
xlabel('n')
ylabel('y(n)')
title('Linear Convolution')

% Convolution function
function y = manual_convolution(x, h)
x = x(:).';
h = h(:).';

nx = length(x);
nh = length(h);
ny = nx + nh - 1;

xpad = [x zeros(1, ny - nx)];
hpad = [h zeros(1, ny - nh)];
y = zeros(1, ny);

for n = 1:ny
    for k = 1:nx
        if n-k+1 >= 1 && n-k+1 <= nh
            y(n) = y(n) + xpad(k) * hpad(n-k+1);
        end
    end
end
end