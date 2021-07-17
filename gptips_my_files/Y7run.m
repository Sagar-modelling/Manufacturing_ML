%run MGGP on Experiment data for Dielectric Constant
clear;
clc;
disp('>>gp=rungp(@Y7_config);');
disp('Press a key to continue');
disp(' ');
pause;
gp = rungp(@Y7_config);
disp(' ');
disp('Evaluate the best individual of');
disp('the runs on the fitness function using:');
disp('>>runtree(gp,''best'');');
disp('Press a key to continue');
disp(' ');
pause;
runtree(gp,'best');
if gp.info.toolbox.symbolic
    
    disp(' ');
    disp('Next, use the the GPPRETTY command on the best individual: ');
    disp('>>gppretty(gp,''best'')');
    disp('Press a key to continue');
    disp(' ');
    pause;
    
    gppretty(gp,'best');
     disp(' ');
end
disp('Next, use the the DRAWTREE command: ');
  disp('>>drawtrees(gp,''best'')');
  disp('Press a key to continue');
  disp(' ');
  pause;
  drawtrees(gp,'best');
  disp(' ');
    pause;
if gp.info.toolbox.symbolic
    disp('Finally, an HTML report listing the models on the Pareto optimal front');
    disp('of model expressional complexity and performance can be generated using');
    disp('the PARETOREPORT function.');
    disp('>>paretoreport(gp)');
    disp(' ');
    disp('Press a key to continue');
    disp(' ');
    pause;
    paretoreport(gp);
    disp('end');
end