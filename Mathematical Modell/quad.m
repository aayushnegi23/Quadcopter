%p(1) = x,p(2) = xdot,p(3) = y, p(4) = ydot,p(5) = z,p(6) = zdot
%p(7) = phi, p(8) = phidot,p(9) = theta,p(10) = thetadot
%p(11) = shi,p(12) = shidot
function w = quad(t,p)

global  Ix Iy Iz m g Kt om1 om2 om3 om4 Kd l
F1 = Kt*om1^2;
F2 = Kt*om2^2;
F3 = Kt*om3^2;
F4 = Kt*om4^2;
M1 = Kd*om1^2;
M2 = Kd*om2^2;
M3 = Kd*om3^2;
M4 = Kd*om4^2;
F = F1+F2+F3+F4;
p1dot = -p(2);
p2dot = (F/m)*((cos(p(7))* sin(p(9))*cos(p(11)))+(sin(p(7))*sin(p(11))));
p3dot = -p(4);
p4dot = (F/m)*((cos(p(7))*sin(p(9))*sin(p(11)))-(sin(p(7))*cos(p(11))));
p5dot = -p(6);
p6dot = (F/m)*((cos(p(7))*cos(p(9)))-(g));
p7dot = -p(8);
p8dot = (((F1-F3)*l)+(p(10)*p(12)*(Iy-Iz)))/Ix;
p9dot = -p(10);
p10dot = (((F2-F4)*l)+(p(12)*p(8)*(Iz-Ix)))/Iy;
p11dot = -p(12);
p12dot = ((M2+M4-M1-M3)+(p(8)*p(10)*(Ix-Iy)))/Iz;
w= [p1dot;p2dot;p3dot;p4dot;p5dot;p6dot;p7dot;p8dot;p9dot;p10dot;p11dot;p12dot];

end