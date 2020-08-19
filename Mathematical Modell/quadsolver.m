clear all
close all
clc
global  Ix Iy Iz m g Kt om1 om2 om3 om4 Kd l

Ix = 0.12;
Iy = 0.12;
Iz = 0.048;
m = 1.025;
g = 9.81;
Kt = 3.122 * 10^(-6);
Kd = 4.749 * 10^(-9);
l = 0.27;
om1 = 950;
om2 = 950+150;
om3 = 950;
om4 = 950;

po = [0 0 0 0 0 0 0 0 0 0 0 0];
tspan = 0:0.01:10;
[t,p] = ode45('quad',tspan,po);
plot(t,p(:,1),t,p(:,3),t,p(:,5));
grid on;
xlabel("Roll,Pitch,Yaw");
ylabel("X(m),Y(m),Z(m)");
legend('Phi2','Theta2','Psi2');
