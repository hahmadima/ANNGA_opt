function fit=NNmodel(x)
global net 

% Simulating the network using normalized data
x=x';
fit1= sim(net,x);
fit= -1*fit1   %% - for Maximization
 
% % Rescaling normalized values 
run Norm;
 fvalue=    (fit1*(max(out(:,1))-min(out(:,1)))+ min(out(:,1)))

save fvalue
