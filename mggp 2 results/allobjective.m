function [ y ] = allobjective( x )

%Objective function :
%Thrust Force 
y(1)=(-0.0001804*x(1)^2*x(2)+0.003846*x(1)^2-0.02163*x(1)*x(2)^2+0.0000902*x(1)*x(2)*x(3)+0.0006395*x(1)*x(2)*x(4)+0.2426*x(1)*x(2)-0.0006343*x(1)*x(3)-0.003974*x(1)*x(4)-0.2565*x(1)-0.00007464*x(2)*x(3)*x(4)-0.003868*x(2)*x(3)-0.0001198*x(2)*x(4)-0.003194*x(2)*x(4)+10.2*x(2)-0.000002592*x(3)^2+0.0007154*x(3)*x(4)-0.01372*x(3)+0.01709*x(4)+0.4381);
%Torque Force
y(2)=(0.1708*x(4)-13.07*x(2)-0.02377*x(3)-0.3506*x(1)+0.001061*x(4)*(x(2)+x(3))+0.0005219*(x(2)-1.0*x(4))*(x(2)+2.0*x(3)+x(4))+0.07021*x(1)*x(2)-0.0002754*x(1)*x(3)-0.003669*x(1)*(x(2)^2+x(4))-0.0001363*x(2)^3*(x(1)+x(4))+0.07807*x(2)^3+0.0003904*x(1)*(x(3)+3.0*x(4))+0.0002754*x(1)*x(2)*x(4)+91.1);
end

