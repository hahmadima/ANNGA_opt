format short g
n = 1000;	% The number of function evaluations
%---- Generate vectors of random inputs
%     r = ( randn(n,1) * sd ) + mean
%---- Generate n samples from a uniform distribution
%     r = minimum + rand(n,1) * (maximum-minimum)

ninp=C-2;
if ninp==1
as=( randn(n,1) * 0.20) + 0.5;
Mdata=[as]';
elseif ninp==2
as=( randn(n,1) * 0.20) + 0.5;
bs=( randn(n,1) * 0.20) + 0.5; 
Mdata=[as bs]';
elseif ninp==3
as=( randn(n,1) * 0.20) + 0.5;
bs=( randn(n,1) * 0.20) + 0.5;
cs=( randn(n,1) * 0.20) + 0.5; 
Mdata=[as bs cs]';
elseif ninp==4
as=( randn(n,1) * 0.20) + 0.5;
bs=( randn(n,1) * 0.20) + 0.5;
cs=( randn(n,1) * 0.20) + 0.5;
ds=( randn(n,1) * 0.20) + 0.5;
Mdata=[as bs cs ds]';
elseif ninp==5
as=( randn(n,1) * 0.20) + 0.5;
bs=( randn(n,1) * 0.20) + 0.5;
cs=( randn(n,1) * 0.20) + 0.5;
ds=( randn(n,1) * 0.20) + 0.5;
es=( randn(n,1) * 0.20) + 0.5;
Mdata=[as bs cs ds es]';
elseif ninp==6
as=( randn(n,1) * 0.20) + 0.5;
bs=( randn(n,1) * 0.20) + 0.5;
cs=( randn(n,1) * 0.20) + 0.5;
ds=( randn(n,1) * 0.20) + 0.5;
es=( randn(n,1) * 0.20) + 0.5;
fs=( randn(n,1) * 0.20) + 0.5;
Mdata=[as bs cs ds es fs]';

elseif ninp==7
as=( randn(n,1) * 0.20) + 0.5;
bs=( randn(n,1) * 0.20) + 0.5;
cs=( randn(n,1) * 0.20) + 0.5;
ds=( randn(n,1) * 0.20) + 0.5;
es=( randn(n,1) * 0.20) + 0.5;
fs=( randn(n,1) * 0.20) + 0.5;
gs=( randn(n,1) * 0.20) + 0.5;
Mdata=[as bs cs ds es fs gs]';

elseif ninp==8
as=( randn(n,1) * 0.20) + 0.5;
bs=( randn(n,1) * 0.20) + 0.5;
cs=( randn(n,1) * 0.20) + 0.5;
ds=( randn(n,1) * 0.20) + 0.5;
es=( randn(n,1) * 0.20) + 0.5;
fs=( randn(n,1) * 0.20) + 0.5;
gs=( randn(n,1) * 0.20) + 0.5;
hs=( randn(n,1) * 0.20) + 0.5;
Mdata=[as bs cs ds es fs gs hs]';

elseif ninp==9
as=( randn(n,1) * 0.20) + 0.5;
bs=( randn(n,1) * 0.20) + 0.5;
cs=( randn(n,1) * 0.20) + 0.5;
ds=( randn(n,1) * 0.20) + 0.5;
es=( randn(n,1) * 0.20) + 0.5;
fs=( randn(n,1) * 0.20) + 0.5;
gs=( randn(n,1) * 0.20) + 0.5;
hs=( randn(n,1) * 0.20) + 0.5;
is=( randn(n,1) * 0.20) + 0.5;
Mdata=[as bs cs ds es fs gs hs is]';

end