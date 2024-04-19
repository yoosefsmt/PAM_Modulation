clear ;
close all;

% Generate Random Number Sequence
sequence = 100;
M = 4;
random_integers = randi([0 M-1], sequence, 1);

% SNR AWGN Channel
n0 = 2.5e-3;
n1 = 0.01;
n2 = 0.25;
SNR0 = 10*log10(1/n0);
SNR1 = 10*log10(1/n1);
SNR2 = 10*log10(1/n2);

% QPSK Modulation
qask_mod = pammod(random_integers,M,0,"gray");

% AWGN Channel
output_channel0 = awgn(qask_mod,SNR0);
output_channel1 = awgn(qask_mod,SNR1);
output_channel2 = awgn(qask_mod,SNR2);

% Plot Signals
scatterplot(qask_mod);
title('Input QASK Signal (M = 4)');
xlabel('In-phase');
ylabel('Quadrature');
grid on;

scatterplot(output_channel0);
title('Input QASK Signal To AWGN Channel (26.0206dB) ');
xlabel('In-phase');
ylabel('Quadrature');
grid on;

scatterplot(output_channel1);
title('Input QASK Signal To AWGN Channel (20dB) ');
xlabel('In-phase');
ylabel('Quadrature');
grid on;

scatterplot(output_channel2);
title('Input QASK Signal To AWGN Channel (6.0206dB) ');
xlabel('In-phase');
ylabel('Quadrature');
grid on;