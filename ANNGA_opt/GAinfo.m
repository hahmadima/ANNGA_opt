%% Hamed Ahmadi, Genetic algorithm optimizing the Neural Network Model
%--------------------------------------------------------------------------
clc
clear;
format bank;
global X
% Loading best neural model from training process
load D:\Matlab\ANNGA_opt\Savednet\9002; 
%%Fitness function
fitnessFunction = @NNmodel;
%%Number of Variables
nvars = ninp;
%Start with default options
options = gaoptimset;
%---GA parameters
% options = gaoptimset(options,'PopInitRange', [0 0 0 0 0;1 1 1 1 1]);
lb=[0 0 0 0];
ub=[1 1 1 1];
options = gaoptimset(options,'PopulationSize' ,100);
options = gaoptimset(options,'Generations' ,200);
options = gaoptimset(options,'CrossoverFraction' ,0.85);
options = gaoptimset(options,'StallGenLimit' ,Inf);
options = gaoptimset(options,'StallTimeLimit' ,Inf);
options = gaoptimset(options,'SelectionFcn' ,@selectionroulette);
options = gaoptimset(options,'MutationFcn' ,{ @mutationuniform 0.01 });
options = gaoptimset(options,'Display' ,'off');
options = gaoptimset(options,'PlotFcns' ,{ @gaplotbestf });
% % Run GA
[X,FVAL,REASON,OUTPUT,POPULATION,SCORES] = ga(fitnessFunction,nvars,[],[],[],[],lb,ub,[],[],options);
X
X1= rNorm(X);

load fvalue;
save (num2str(1));
load 1
