% donnees pour mon systéme
global Re Le Jm Rm Ke Cc0 Cc Ua
format SHORT
home
Re=2.4;  Le=0.44;  Jm=0.08;  Rm=0.01; Ke=0.139;
Ua=48; %Tension d'entrée du moteur
Cc0=0.1;%N.m couple de charge initial
Cc=Cc0+6*Cc0;%Perturbation du couple de charge

In=11;%Courant nominal
Wn=148;%vitesse nominale
rate_noise_w=0.02*Wn;%rate noise * valeure moyenne de w
rate_noise_i=0.02*In; % rate noise * valeure moyenne de i;
Af=0.01
Bf=0.0002
Te=0.1
R=42.3
L=0.63
J=0.0012
f=0.001
K=1.137

switch_input=0
CurrentFaultSwitch=0
VelocityFaultSwitch=0
ResFaultSwitch=0
StartStop=0
%sim('DC_moteor_fdi1.slx');

set_param('DC_moteor_fdi1', 'SimulationCommand', 'start');



% % Get the current position of the Manual Switch
% currentPosition = get_param('DC_moteor_fdi/Sensors/Current Sensor/Current sensor fault', 'sw');
% disp(['Current Position: ', currentPosition]);
% 
% % Toggle the Manual Switch
% if strcmp(currentPosition, 0)
%     % Switch to the bottom position
%     set_param('DC_moteor_fdi/Sensors/Current Sensor/Current sensor fault', 'sw', '0');
% else
%     % Switch to the top position
%     set_param('DC_moteor_fdi/Sensors/Current Sensor/Current sensor fault', 'sw', '1');
% end
% 
% % Display the new position
% newPosition = get_param('DC_moteor_fdi/Sensors/Current Sensor/Current sensor fault', 'sw');
% disp(['New Position: ', newPosition]);
