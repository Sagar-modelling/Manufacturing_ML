function gp=Y9_config(gp)
%composite- Y1
gp.runcontrol.pop_size=100;                     
gp.runcontrol.num_gen=100;		
gp.runcontrol.verbose=20;
gp.fitness.fitfun=@regressmulti_fitfun;               
gp.fitness.minimisation=true; 
gp.runcontrol.showBestInputs = true;
gp.runcontrol.runs = 1;

gp.selection.method='tour';
gp.selection.tournament.size=15;
gp.selection.elite_fraction = 0.3;

%fitness
%gp.fitness.terminate = true;
%gp.fitness.terminate_value =0.3;

%Load the variables xtrain, ytrain, xtest and ytest and assign to gp structure
load mydataY9;
gp.userdata.xtrain=xtrain;
gp.userdata.ytrain=ytrain;
gp.userdata.xtest=xtest;
gp.userdata.ytest=ytest;
%gp.userdata.xval = xval;
%gp.userdata.yval = yval;
%Tell GPTIPS to call validation set once per generation
%gp.userdata.user_fcn = @regressmulti_fitfun_validate;
%Define the number of inputs
gp.nodes.inputs.num_inp = size(gp.userdata.xtrain,2);

%Enable multiple gene mode and set max number of genes per individual.
gp.genes.multigene=true;              
gp.genes.max_genes=12;
gp.genes.max_depth=6;

%Define function nodes
gp.nodes.functions.name={'times','minus','plus'};
% 'times','minus','plus','log','tanh','exp','square'
end
