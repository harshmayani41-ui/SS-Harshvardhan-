clc
clear
close all

t = -10:0.05:10;

% Basic signals
impulse = zeros(1,length(t));
impulse(t == 0) = 1;

step = zeros(1,length(t));
step(t >= 0) = 1;

ramp = t .* step;
signum = sign(t);

figure
subplot(2,2,1)
plot(t,impulse)
title('Unit Impulse')
xlabel('t')
ylabel('Amplitude')

subplot(2,2,2)
plot(t,step)
title('Unit Step')
xlabel('t')
ylabel('Amplitude')

subplot(2,2,3)
plot(t,ramp)
title('Unit Ramp')
xlabel('t')
ylabel('Amplitude')

subplot(2,2,4)
plot(t,signum)
title('Signum Signal')
xlabel('t')
ylabel('Amplitude')

% Time shifting of unit step
step_t_minus_2 = zeros(1,length(t));
step_t_minus_2(t >= 2) = 1;

step_t_plus_2 = zeros(1,length(t));
step_t_plus_2(t >= -2) = 1;

figure
subplot(2,1,1)
plot(t,step_t_minus_2)
title('u(t-2)')
xlabel('t')
ylabel('Amplitude')

subplot(2,1,2)
plot(t,step_t_plus_2)
title('u(t+2)')
xlabel('t')
ylabel('Amplitude')

% Ramp operations
shifted_ramp = (t-2) .* (t >= 2);
scaled_ramp = (2*t) .* (2*t >= 0);
reversed_ramp = (-t) .* (-t >= 0);

figure
subplot(3,1,1)
plot(t,shifted_ramp)
title('Shifted Ramp')
xlabel('t')
ylabel('Amplitude')

subplot(3,1,2)
plot(t,scaled_ramp)
title('Time Scaled Ramp')
xlabel('t')
ylabel('Amplitude')

subplot(3,1,3)
plot(t,reversed_ramp)
title('Time Reversed Ramp')
xlabel('t')
ylabel('Amplitude')

% Difference between shifted unit steps
difference_signal = step_t_minus_2 - step_t_plus_2;

figure
plot(t,difference_signal)
title('Difference of Shifted Unit Steps')
xlabel('t')
ylabel('Amplitude')