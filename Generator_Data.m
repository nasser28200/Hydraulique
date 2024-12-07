clc;
clear;
Vd=0;
Vq=0;
Cr=0;
f=0;
J=0.263;
P=4;%Nombre de Paire de Pôles
wm=2*pi*50/P % w mecanique
R_charge=0;
L_charge=0;
Rs=0.6+R_charge;
Ld=1.4e-3+L_charge;
Lq=2.8e-3+L_charge;

rate_noise_w=0.002;
rate_noise_i=0.02; 

Phif=0.8;
A1=[-Rs/Ld 0 ;0 -Rs/Lq ];
A2=[0 Lq/Ld ;-Ld/Lq 0];
B1=[-1/Ld 0 0;0 -1/Lq 0];
B2=[0 0 0;0  0 1/Lq];



switch_input=0
CurrentFaultSwitch=1
VelocityFaultSwitch=1
StartStop=0

Af=0.0001
Bf=0.00002
Te=1