%% Hamed Ahmadi, Creating Feed Forward Neural Network Model
%--------------------------------------------------------------------------
clear all;clc;
format short g;
warning off;
global net
% Importing and normalizing data from Data.m matrix
run Norm;
run montecarlo;
infoN=infoN';


% Assigning data to three sets of Training, Testing, and Validation
trainRatio= 0.70 ;
valRatio= 0.30 ;
testRatio= 0.0 ;
[trainP,valP,testV] = dividerand(infoN,trainRatio,valRatio,testRatio);

trainP=trainP';
[Rt,Ct]=size(trainP);
for i=1:Ct-2
    inpTrain(:,i)=trainP(:,i+1);
end
inpTrain=inpTrain';
outTrain=trainP(:,Ct)';
outTrain1= outTrain*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));

valP=valP';
[Rv,Cv]=size(valP);
for i=1:Cv-2
    inpVal(:,i)=valP(:,i+1);
end
inpVal=inpVal';
outVal=valP(:,Cv)';
outVal1= outVal*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));

testV=testV';
[Rts,Cts]=size(testV);
for i=1:Cts-2
    inpTest(:,i)=testV(:,i+1);
end
inpTest=inpTest';
outTest=testV(:,Cts)';
outTest1= outTest*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));

% Network parameters
minNHN1=  4;  % Minimum Number of hidden neuron(s) in layer 1
maxNHN1=  9;  % Maximum Number of hidden neuron(s) in layer 1
Nnet=  10;  % Number of networks to train
Rn=0;
RnN=Nnet*((maxNHN1-minNHN1)+1);
for N=1:Nnet;
for n1=minNHN1:maxNHN1;
 for Rn=Rn+1;  
     fprintf('Creating Net %0.0f out of %0.0f',Rn,RnN)
    disp('...');
    
    net=newff(minmax(inpTrain),[n1,1],...
        {'tansig','purelin'},'trainlm','learngdm');
    
    net.performFcn='mse';
    net.performParam.ratio=0.0001;
   
    net.trainParam.epochs = 500;
    net.trainParam.lr_inc = 1.05;
    net.trainParam.mc = 0.8;
    net.trainParam.lr = 0.3;
    net.trainParam.show = 10;
    net.trainParam.showCommandLine=false;
    net.trainParam.mu_max = 1e200;
    net.trainParam.goal = 1e-15;
    net.trainParam.min_grad=1e-20;
    net.trainParam.max_fail=1;
    net.trainParam.showWindow = false;

    % Network training
    [net,tr] = train(net,inpTrain,outTrain);
    lw1=net.iw{1};
    lb1=net.b{1};
    lw2=net.lw{2};
    lb2=net.b{2};
    
    
    % ANN model simulation
    Ytr= sim(net,inpTrain);
    Ytest= sim(net,inpTest);
    Yval= sim(net,inpVal);
    Ysim= sim(net,Mdata);
    % Re-Scaling values
    Ytr1=    Ytr*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
    Ytest1=  Ytest*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
    Yval1=   Yval*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
    Ysim1=   Ysim*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
    Yall=    [Ytr Ytest Yval]';
    Yall1=   Yall*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
    Outall=  [outTrain outTest outVal]';
    Outall1= Outall*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
    

    % Model evaluation
    MSEtr = mean((Ytr1-outTrain1) .^ 2);
    R2tr= 1 - MSEtr / var(outTrain1, 1);
        
    MSEtest = mean((Ytest1-outTest1) .^ 2);
    R2test= 1 - MSEtest / var(outTest1, 1);
    
    MSEval = mean((Yval1-outVal1) .^ 2);
    R2val=  1 - MSEval / var(outVal1, 1);
    
    MSEall = mean((Yall1-Outall1) .^ 2);
    R2all= 1 - MSEall / var(Outall1, 1);
    
    VARtr= var(Ytr1); VARtest= var(Ytest1); VARval= var(Yval1);
    VARall= var(Yall1); VARsim= var(Ysim1);
    Mall= mean(Yall1); SDall= std(Yall1);
    Msim= mean(Ysim1); SDsim= std(Ysim1);
    
     clc
    % disp('         #net       MSEtr       MSEtest       MSEval       MSEall');
    MSE(Rn,:)= [n1*1000+N  MSEtr MSEtest MSEval MSEall];
     disp('         #net       R2tr        R2test        R2val        R2all')
    RSQ(Rn,:)= [n1*1000+N  R2tr R2test R2val R2all]
    % disp('         #net       MeanAll      dAll         MeanSim      sdSim');
    MSD(Rn,:)= [n1*1000+N  Mall SDall Msim SDsim];
    
    % zz=getx(net)
    save(['D:\MATLAB\ANNGA_opt\Savednet\'...
        num2str(n1*1000+N)])
   
end

end
end

% Selecting best net
disp('         #net       R2tr        R2test        R2val        R2all')

[R1,R2]=max(RSQ(:,2:5));
bestnet= RSQ(R2,:)