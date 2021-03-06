function [ y ] = allobjective( x )

%Objective function :
%Surface Roughness 
y(1)=-(0.01279*x(1)^3*x(2)^2+85.63*x(1)^2*x(3)^2-29.69*x(1)^2*x(3)-1.179*x(1)^2+0.001308*x(1)*x(2)^2*x(3)-0.0002235*x(1)*x(2)^2-0.5726*x(1)*x(2)*x(3)^2-40.09*x(1)*x(3)^2+17.34*x(1)*x(3)+3.293*x(1)-0.0009345*x(2)^2*x(3)+0.0002235*x(2)^2 + 0.3806*x(2)*x(3)^2-0.001532*x(2)*x(3)-0.02367*x(2)+46.97*x(3)^2-3.795*x(3)+0.4373);
%MSD
y(2)=-(2.787*x(1)^2*x(2)^2-3268.0*x(1)^2*x(2)*x(3)+286.3*x(1)^2*x(2)-3268.0*x(1)^2*x(3)+12033.0*x(1)^2-19.86*x(1)*x(2)^2*x(3)-2.787*x(1)*x(2)-2.787*x(1)*x(2)*x(3)^2+11577.0*x(1)*x(2)*x(3)-907.8*x(1)*x(2)-2.787*x(1)*x(3)^2-188110.0*x(1)*x(3)-2998.0*x(1)+19.86*x(2)^2*x(3)-4540.0*x(2)*x(3)^2-4543.0*x(2)*x(3)+ 344.5*x(2)+444770.0*x(3)^2-8418.0*x(3)+13322.0);
end

