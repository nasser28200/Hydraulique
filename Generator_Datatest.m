clc;
clear;
Vf=300;
Rs=0.48;
J=0.263;
F=0;
P=3;%nombre de Poles
Rf=10;
Mf=0.05;
Ld=0.0231;
Lq=0.0231;
Lf=0.0924;
R=[Rs 0 0;0 Rs 0];
L=[-Ld 0 Mf;0 -Lq 0];
A=[0 Lq 0;-Ld 0 Mf];
RF=[0 0 Rf];
LF=[-Mf 0 Lf];

Rcc=[Rs 0 0;0 Rs 0;0 0 Rf];
Lcc=[-Ld 0 Mf;0 -Lq 0;-Mf 0 Lf];
Acc=[0 Lq 0;-Ld 0 Mf;0 0 0];

sinamp=384.6

switch_input=0
CurrentFaultSwitch=0
VelocityFaultSwitch=0
ResFaultSwitch=0
StartStop=0

Af=0.01
Bf=0.0002
Te=0.1

Re=2.4;  Le=0.44;  Jm=0.08;  Rm=0.01; Ke=0.139;
Ua=48; %Tension d'entrée du moteur
Cc0=0.1;%N.m couple de charge initial
Cc=Cc0+6*Cc0;%Perturbation du couple de charge

In=11;%Courant nominal
Wn=148;%vitesse nominale
rate_noise_w=0.02*Wn;%rate noise * valeure moyenne de w
rate_noise_i=0.02*In; % rate noise * valeure moyenne de i;
