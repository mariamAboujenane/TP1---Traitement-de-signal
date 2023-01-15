clear all
close all
clc

% qst 1

fe = 1e4;  % fe: frequence d echantillonnage
te = 1/fe; % te: pas d echantillonnage
N = 10000; % N: nombre d echantillons (points)
t = (0:N-1)*te; % intervalle de temps x(0),x(te),x(2te),...,x((N-1)te).
x = 1.2*cos(2*pi*440*t+1.2)+3*cos(2*pi*550*t)+0.6*cos(2*pi*2500*t);
%plot(t,x,'.');
%title('x(t) :');

% qst 2

f =(0:N-1)*(fe/N); % f: frequence du spectre
y = fft(x);     % y: spectre , fft(x) : transformee de fourier
%plot(f,abs(y)); % abs(y) : spectre d amplitude
%title('spectre du  x(t) :');


% qst 3

fshift = (-N/2:N/2-1)*(fe/N);
% plot(fshift,fftshift(abs(y)))
%title('spectre du  x(t) apres fftshift():');

% qst 4


bruit = randn(size(x));
xnoise= x+bruit;
% subplot(1,2,1)
% plot(bruit)
% title('bruit');
% subplot(1,2,2)
% plot(fshift,fftshift(abs(fft(xnoise))));
% title('spectre du signal bruité');

% qst 5

%sound(bruit)
%sound(xnoise,fe)

% qst 6


% y = fft(xnoise);    
% spectreDePuissance=2.^abs(y)/N;
% plot(fshift,fftshift(spectreDePuissance)); 
% title('spectre de puissance du signal bruité :');

%qst 7
% 
% bruit_haute_intensite = 50*randn(size(x));
% xnoise= x+bruit_haute_intensite;
% subplot(1,2,1)
% plot(bruit_haute_intensite)
% title('bruit haute intensite');
% subplot(1,2,2)
% plot(fshift,fftshift(abs(fft(xnoise))));
% title('spectre du signal bruité');

