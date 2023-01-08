clear all 
close all
clc

%qst 1

[x,fe]=audioread("bluewhale.au");
chant = x(2.45e4:3.10e4);

%qst 2

%sound(chant,fe)
N = length(chant);
te = 1/fe;
t = (0:N-1)*(10*te);
% plot(t,chant)
% title('signal du chant du rorqual bleu :');


%qst 3 

% Longueur du signal
N = length(chant);

% Calcul de la puissance de 2 supérieure à N
nouvelle_longueur = nextpow2(N);
N=nouvelle_longueur;
densite_spectrale= abs(fft(chant)).^2/N; 
f = (0:floor(N/2))*(fe/N)/10;
plot(f,densite_spectrale(1:floor(N/2)+1));
title('densité spectrale de puissance du signal:');

% qst 4

% Recherche de la fréquence fondamentale
% [~, index] = max(densite_spectrale);
% freqence_fondamentale = f(index);
