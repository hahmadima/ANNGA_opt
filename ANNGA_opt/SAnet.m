%% Hamed Ahmadi, The sensitivity analysis of Neural Network Model using VSR
%--------------------------------------------------------------------------
clc,clear;
format short g;
load D:\Matlab\ANNGA_opt\Savednet\9002;  % Loading best neural model from training process

% Preparing data for sensitivity analysis
inpAll= [inpTrain inpTest inpVal];

infoNS= [(1:size(inpAll'))' inpAll' Outall1];

[Rs,Cs]=size(infoNS);
for k=1:Cs-2
    inpSen(:,k)=infoNS(:,k+1);
end
ninp=Cs-2;
cn= 0.5;

if ninp==2;
fs1=inpSen(:,1);
fs1(fs1<2) = cn;
inpSen1= [fs1 inpSen(:,2)];
inpSen1=inpSen1';

fs2=inpSen(:,2);
fs2(fs2<2) = cn;
inpSen2= [inpSen(:,1) fs2];
inpSen2=inpSen2';

% Simulating network with modified data matrix
Ysen1= sim(net,inpSen1);
Ysen2= sim(net,inpSen2);
% Re-Scaling values
Ysen11=    Ysen1*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen21=    Ysen2*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
outSen=infoNS(:,Cs)';

% Calculating Variable sensitivity error (VSE) Variable sensitivity ratio (VSR)
ResS1= Ysen11'-Outall1;
SES1=  ResS1.^2;
MSES1= sum(SES1)/Rs; %= VSE
%
ResS2= Ysen21'-Outall1;
SES2=  ResS2.^2;
MSES2= sum(SES2)/Rs; %= VSE
%

VSR1= MSES1/MSEall;
VSR2= MSES2/MSEall;
MSEall
VSR= [VSR1 VSR2]

elseif ninp==3;
fs1=inpSen(:,1);
fs1(fs1<2) = cn;
inpSen1= [fs1 inpSen(:,2:ninp)];
inpSen1=inpSen1';

fs2=inpSen(:,2);
fs2(fs2<2) = cn;
inpSen2= [inpSen(:,1) fs2 inpSen(:,3)];
inpSen2=inpSen2';

fs3=inpSen(:,3);
fs3(fs3<2) = cn;
inpSen3= [inpSen(:,1:2) fs3];
inpSen3=inpSen3';

% Simulating network with modified data matrix
Ysen1= sim(net,inpSen1);
Ysen2= sim(net,inpSen2);
Ysen3= sim(net,inpSen3);
% Re-Scaling values
Ysen11=    Ysen1*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen21=    Ysen2*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen31=    Ysen3*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
outSen=infoNS(:,Cs)';

% Calculating Variable sensitivity error (VSE) Variable sensitivity ratio (VSR)
ResS1= Ysen11'-Outall1;
SES1=  ResS1.^2;
MSES1= sum(SES1)/Rs; %= VSE
%
ResS2= Ysen21'-Outall1;
SES2=  ResS2.^2;
MSES2= sum(SES2)/Rs; %= VSE
%
ResS3= Ysen31'-Outall1;
SES3=  ResS3.^2;
MSES3= sum(SES3)/Rs; %= VSE
%

VSR1= MSES1/MSEall;
VSR2= MSES2/MSEall;
VSR3= MSES3/MSEall;
MSEall
VSR= [VSR1 VSR2 VSR3]

elseif ninp==4
fs1=inpSen(:,1);
fs1(fs1<2) = cn;
inpSen1= [fs1 inpSen(:,2:ninp)];
inpSen1=inpSen1';

fs2=inpSen(:,2);
fs2(fs2<2) = cn;
inpSen2= [inpSen(:,1) fs2 inpSen(:,3:4)];
inpSen2=inpSen2';

fs3=inpSen(:,3);
fs3(fs3<2) = cn;
inpSen3= [inpSen(:,1:2) fs3 inpSen(:,4)];
inpSen3=inpSen3';

fs4=inpSen(:,4);
fs4(fs4<2) = cn;
inpSen4= [inpSen(:,1:3) fs4];
inpSen4=inpSen4';

% Simulating network with modified data matrix
Ysen1= sim(net,inpSen1);
Ysen2= sim(net,inpSen2);
Ysen3= sim(net,inpSen3);
Ysen4= sim(net,inpSen4);
% Re-Scaling values
Ysen11=    Ysen1*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen21=    Ysen2*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen31=    Ysen3*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen41=    Ysen4*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
outSen=infoNS(:,Cs)';

% Calculating Variable sensitivity error (VSE) Variable sensitivity ratio (VSR)
ResS1= Ysen11'-Outall1;
SES1=  ResS1.^2;
MSES1= sum(SES1)/Rs; %= VSE
%
ResS2= Ysen21'-Outall1;
SES2=  ResS2.^2;
MSES2= sum(SES2)/Rs; %= VSE
%
ResS3= Ysen31'-Outall1;
SES3=  ResS3.^2;
MSES3= sum(SES3)/Rs; %= VSE
%
ResS4= Ysen41'-Outall1;
SES4=  ResS4.^2;
MSES4= sum(SES4)/Rs; %= VSE
%

VSR1= MSES1/MSEall;
VSR2= MSES2/MSEall;
VSR3= MSES3/MSEall;
VSR4= MSES4/MSEall;
MSEall
VSR= [VSR1 VSR2 VSR3 VSR4]

elseif ninp==5;
fs1=inpSen(:,1);
fs1(fs1<2) = cn;
inpSen1= [fs1 inpSen(:,2:5)];
inpSen1=inpSen1';

fs2=inpSen(:,2);
fs2(fs2<2) = cn;
inpSen2= [inpSen(:,1) fs2 inpSen(:,3:5)];
inpSen2=inpSen2';

fs3=inpSen(:,3);
fs3(fs3<2) = cn;
inpSen3= [inpSen(:,1:2) fs3 inpSen(:,4:5)];
inpSen3=inpSen3';

fs4=inpSen(:,4);
fs4(fs4<2) = cn;
inpSen4= [inpSen(:,1:3) fs4 inpSen(:,5)];
inpSen4=inpSen4';

fs5=inpSen(:,5);
fs5(fs5<2) = cn;
inpSen5= [inpSen(:,1:4) fs5];
inpSen5=inpSen5';

% Simulating network with modified data matrix
Ysen1= sim(net,inpSen1);
Ysen2= sim(net,inpSen2);
Ysen3= sim(net,inpSen3);
Ysen4= sim(net,inpSen4);
Ysen5= sim(net,inpSen5);
% Re-Scaling values
Ysen11=    Ysen1*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen21=    Ysen2*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen31=    Ysen3*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen41=    Ysen4*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen51=    Ysen5*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
outSen=infoNS(:,Cs)';

% Calculating Variable sensitivity error (VSE) Variable sensitivity ratio (VSR)
ResS1= Ysen11'-Outall1;
SES1=  ResS1.^2;
MSES1= sum(SES1)/Rs; %= VSE
%
ResS2= Ysen21'-Outall1;
SES2=  ResS2.^2;
MSES2= sum(SES2)/Rs; %= VSE
%
ResS3= Ysen31'-Outall1;
SES3=  ResS3.^2;
MSES3= sum(SES3)/Rs; %= VSE
%
ResS4= Ysen41'-Outall1;
SES4=  ResS4.^2;
MSES4= sum(SES4)/Rs; %= VSE
%
ResS5= Ysen51'-Outall1;
SES5=  ResS5.^2;
MSES5= sum(SES5)/Rs; %= VSE
%

VSR1= MSES1/MSEall;
VSR2= MSES2/MSEall;
VSR3= MSES3/MSEall;
VSR4= MSES4/MSEall;
VSR5= MSES5/MSEall;
MSEall
VSR= [VSR1 VSR2 VSR3 VSR4 VSR5]

elseif ninp==6;
fs1=inpSen(:,1);
fs1(fs1<2) = cn;
inpSen1= [fs1 inpSen(:,2:6)];
inpSen1=inpSen1';

fs2=inpSen(:,2);
fs2(fs2<2) = cn;
inpSen2= [inpSen(:,1) fs2 inpSen(:,3:6)];
inpSen2=inpSen2';

fs3=inpSen(:,3);
fs3(fs3<2) = cn;
inpSen3= [inpSen(:,1:2) fs3 inpSen(:,4:6)];
inpSen3=inpSen3';

fs4=inpSen(:,4);
fs4(fs4<2) = cn;
inpSen4= [inpSen(:,1:3) fs4 inpSen(:,5:6)];
inpSen4=inpSen4';

fs5=inpSen(:,5);
fs5(fs5<2) = cn;
inpSen5= [inpSen(:,1:4) fs5 inpSen(:,6:6)];
inpSen5=inpSen5';

fs6=inpSen(:,6);
fs6(fs6<2) = cn;
inpSen6= [inpSen(:,1:5) fs6];
inpSen6=inpSen6';

% Simulating network with modified data matrix
Ysen1= sim(net,inpSen1);
Ysen2= sim(net,inpSen2);
Ysen3= sim(net,inpSen3);
Ysen4= sim(net,inpSen4);
Ysen5= sim(net,inpSen5);
Ysen6= sim(net,inpSen6);
% Re-Scaling values
Ysen11=    Ysen1*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen21=    Ysen2*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen31=    Ysen3*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen41=    Ysen4*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen51=    Ysen5*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen61=    Ysen6*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
outSen=infoNS(:,Cs)';

% Calculating Variable sensitivity error (VSE) Variable sensitivity ratio (VSR)
ResS1= Ysen11'-Outall1;
SES1=  ResS1.^2;
MSES1= sum(SES1)/Rs; %= VSE
%
ResS2= Ysen21'-Outall1;
SES2=  ResS2.^2;
MSES2= sum(SES2)/Rs; %= VSE
%
ResS3= Ysen31'-Outall1;
SES3=  ResS3.^2;
MSES3= sum(SES3)/Rs; %= VSE
%
ResS4= Ysen41'-Outall1;
SES4=  ResS4.^2;
MSES4= sum(SES4)/Rs; %= VSE
%
ResS5= Ysen51'-Outall1;
SES5=  ResS5.^2;
MSES5= sum(SES5)/Rs; %= VSE
%
ResS6= Ysen61'-Outall1;
SES6=  ResS6.^2;
MSES6= sum(SES6)/Rs; %= VSE
%

VSR1= MSES1/MSEall;
VSR2= MSES2/MSEall;
VSR3= MSES3/MSEall;
VSR4= MSES4/MSEall;
VSR5= MSES5/MSEall;
VSR6= MSES6/MSEall;
MSEall
VSR= [VSR1 VSR2 VSR3 VSR4 VSR5 VSR6]

elseif ninp==7;
fs1=inpSen(:,1);
fs1(fs1<2) = cn;
inpSen1= [fs1 inpSen(:,2:ninp)];
inpSen1=inpSen1';

fs2=inpSen(:,2);
fs2(fs2<2) = cn;
inpSen2= [inpSen(:,1) fs2 inpSen(:,3:7)];
inpSen2=inpSen2';

fs3=inpSen(:,3);
fs3(fs3<2) = cn;
inpSen3= [inpSen(:,1:2) fs3 inpSen(:,4:7)];
inpSen3=inpSen3';

fs4=inpSen(:,4);
fs4(fs4<2) = cn;
inpSen4= [inpSen(:,1:3) fs4 inpSen(:,5:7)];
inpSen4=inpSen4';

fs5=inpSen(:,5);
fs5(fs5<2) = cn;
inpSen5= [inpSen(:,1:4) fs5 inpSen(:,6:7)];
inpSen5=inpSen5';

fs6=inpSen(:,6);
fs6(fs6<2) = cn;
inpSen6= [inpSen(:,1:5) fs6 inpSen(:,7)];
inpSen6=inpSen6';

fs7=inpSen(:,7);
fs7(fs7<2) = cn;
inpSen7= [inpSen(:,1:6) fs7];
inpSen7=inpSen7';
% Simulating network with modified data matrix
Ysen1= sim(net,inpSen1);
Ysen2= sim(net,inpSen2);
Ysen3= sim(net,inpSen3);
Ysen4= sim(net,inpSen4);
Ysen5= sim(net,inpSen5);
Ysen6= sim(net,inpSen6);
Ysen7= sim(net,inpSen7);
% Re-Scaling values
Ysen11=    Ysen1*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen21=    Ysen2*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen31=    Ysen3*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen41=    Ysen4*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen51=    Ysen5*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen61=    Ysen6*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen71=    Ysen7*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
outSen=infoNS(:,Cs)';

% Calculating Variable sensitivity error (VSE) Variable sensitivity ratio (VSR)
ResS1= Ysen11'-Outall1;
SES1=  ResS1.^2;
MSES1= sum(SES1)/Rs; %= VSE
%
ResS2= Ysen21'-Outall1;
SES2=  ResS2.^2;
MSES2= sum(SES2)/Rs; %= VSE
%
ResS3= Ysen31'-Outall1;
SES3=  ResS3.^2;
MSES3= sum(SES3)/Rs; %= VSE
%
ResS4= Ysen41'-Outall1;
SES4=  ResS4.^2;
MSES4= sum(SES4)/Rs; %= VSE
%
ResS5= Ysen51'-Outall1;
SES5=  ResS5.^2;
MSES5= sum(SES5)/Rs; %= VSE
%
ResS6= Ysen61'-Outall1;
SES6=  ResS6.^2;
MSES6= sum(SES6)/Rs; %= VSE
%
ResS7= Ysen71'-Outall1;
SES7=  ResS7.^2;
MSES7= sum(SES7)/Rs; %= VSE
%
VSR1= MSES1/MSEall;
VSR2= MSES2/MSEall;
VSR3= MSES3/MSEall;
VSR4= MSES4/MSEall;
VSR5= MSES5/MSEall;
VSR6= MSES6/MSEall;
VSR7= MSES7/MSEall;
MSEall
VSR= [VSR1 VSR2 VSR3 VSR4 VSR5 VSR6 VSR7]

elseif ninp==8;
fs1=inpSen(:,1);
fs1(fs1<2) = cn;
inpSen1= [fs1 inpSen(:,2:ninp)];
inpSen1=inpSen1';

fs2=inpSen(:,2);
fs2(fs2<2) = cn;
inpSen2= [inpSen(:,1) fs2 inpSen(:,3:8)];
inpSen2=inpSen2';

fs3=inpSen(:,3);
fs3(fs3<2) = cn;
inpSen3= [inpSen(:,1:2) fs3 inpSen(:,4:8)];
inpSen3=inpSen3';

fs4=inpSen(:,4);
fs4(fs4<2) = cn;
inpSen4= [inpSen(:,1:3) fs4 inpSen(:,5:8)];
inpSen4=inpSen4';

fs5=inpSen(:,5);
fs5(fs5<2) = cn;
inpSen5= [inpSen(:,1:4) fs5 inpSen(:,6:8)];
inpSen5=inpSen5';

fs6=inpSen(:,6);
fs6(fs6<2) = cn;
inpSen6= [inpSen(:,1:5) fs6 inpSen(:,7:8)];
inpSen6=inpSen6';

fs7=inpSen(:,7);
fs7(fs7<2) = cn;
inpSen7= [inpSen(:,1:6) fs7 inpSen(:,8)];
inpSen7=inpSen7';

fs8=inpSen(:,8);
fs8(fs8<2) = cn;
inpSen8= [inpSen(:,1:7) fs8];
inpSen8=inpSen8';
% Simulating network with modified data matrix
Ysen1= sim(net,inpSen1);
Ysen2= sim(net,inpSen2);
Ysen3= sim(net,inpSen3);
Ysen4= sim(net,inpSen4);
Ysen5= sim(net,inpSen5);
Ysen6= sim(net,inpSen6);
Ysen7= sim(net,inpSen7);
Ysen8= sim(net,inpSen8);
% Re-Scaling values
Ysen11=    Ysen1*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen21=    Ysen2*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen31=    Ysen3*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen41=    Ysen4*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen51=    Ysen5*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen61=    Ysen6*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen71=    Ysen7*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
Ysen81=    Ysen8*(max(out(:,1))-min(out(:,1)))+ min(out(:,1));
outSen=infoNS(:,Cs)';

% Calculating Variable sensitivity error (VSE) Variable sensitivity ratio (VSR)
ResS1= Ysen11'-Outall1;
SES1=  ResS1.^2;
MSES1= sum(SES1)/Rs; %= VSE
%
ResS2= Ysen21'-Outall1;
SES2=  ResS2.^2;
MSES2= sum(SES2)/Rs; %= VSE
%
ResS3= Ysen31'-Outall1;
SES3=  ResS3.^2;
MSES3= sum(SES3)/Rs; %= VSE
%
ResS4= Ysen41'-Outall1;
SES4=  ResS4.^2;
MSES4= sum(SES4)/Rs; %= VSE
%
ResS5= Ysen51'-Outall1;
SES5=  ResS5.^2;
MSES5= sum(SES5)/Rs; %= VSE
%
ResS6= Ysen61'-Outall1;
SES6=  ResS6.^2;
MSES6= sum(SES6)/Rs; %= VSE
%
ResS7= Ysen71'-Outall1;
SES7=  ResS7.^2;
MSES7= sum(SES7)/Rs; %= VSE
%
ResS8= Ysen81'-Outall1;
SES8=  ResS8.^2;
MSES8= sum(SES8)/Rs; %= VSE
%

VSR1= MSES1/MSEall;
VSR2= MSES2/MSEall;
VSR3= MSES3/MSEall;
VSR4= MSES4/MSEall;
VSR5= MSES5/MSEall;
VSR6= MSES6/MSEall;
VSR7= MSES7/MSEall;
VSR8= MSES8/MSEall;
MSEall
VSR= [VSR1 VSR2 VSR3 VSR4 VSR5 VSR6 VSR7 VSR8]
end
    