%% Normalization data into the interval [0 1]
format short g;
run Data;
[R,C]=size(info);
for i=1:C-2
    inp(:,i)=info(:,i+1);
end
out=info(:,C);
outN= (out(:,1) - min(out)) / (max(out)-min(out));
num=1:size(out);
num=num';
ninp=C-2;
if ninp==1
x1= (inp(:,1) - min(inp(:,1))) / (max(inp(:,1))-min(inp(:,1)));
infoN=[num x1 outN];
elseif ninp==2
x1= (inp(:,1) - min(inp(:,1))) / (max(inp(:,1))-min(inp(:,1)));
x2= (inp(:,2) - min(inp(:,2))) / (max(inp(:,2))-min(inp(:,2)));
infoN=[num x1 x2 outN];
elseif ninp==3
x1= (inp(:,1) - min(inp(:,1))) / (max(inp(:,1))-min(inp(:,1)));
x2= (inp(:,2) - min(inp(:,2))) / (max(inp(:,2))-min(inp(:,2)));
x3= (inp(:,3) - min(inp(:,3))) / (max(inp(:,3))-min(inp(:,3)));
infoN=[num x1 x2 x3 outN];
elseif ninp==4
x1= (inp(:,1) - min(inp(:,1))) / (max(inp(:,1))-min(inp(:,1)));
x2= (inp(:,2) - min(inp(:,2))) / (max(inp(:,2))-min(inp(:,2)));
x3= (inp(:,3) - min(inp(:,3))) / (max(inp(:,3))-min(inp(:,3)));
x4= (inp(:,4) - min(inp(:,4))) / (max(inp(:,4))-min(inp(:,4)));
infoN=[num x1 x2 x3 x4 outN];
elseif ninp==5
x1= (inp(:,1) - min(inp(:,1))) / (max(inp(:,1))-min(inp(:,1)));
x2= (inp(:,2) - min(inp(:,2))) / (max(inp(:,2))-min(inp(:,2)));
x3= (inp(:,3) - min(inp(:,3))) / (max(inp(:,3))-min(inp(:,3)));
x4= (inp(:,4) - min(inp(:,4))) / (max(inp(:,4))-min(inp(:,4)));
x5= (inp(:,5) - min(inp(:,5))) / (max(inp(:,5))-min(inp(:,5)));
infoN=[num x1 x2 x3 x4 x5 outN];
elseif ninp==6
x1= (inp(:,1) - min(inp(:,1))) / (max(inp(:,1))-min(inp(:,1)));
x2= (inp(:,2) - min(inp(:,2))) / (max(inp(:,2))-min(inp(:,2)));
x3= (inp(:,3) - min(inp(:,3))) / (max(inp(:,3))-min(inp(:,3)));
x4= (inp(:,4) - min(inp(:,4))) / (max(inp(:,4))-min(inp(:,4)));
x5= (inp(:,5) - min(inp(:,5))) / (max(inp(:,5))-min(inp(:,5)));
x6= (inp(:,6) - min(inp(:,6))) / (max(inp(:,6))-min(inp(:,6)));
infoN=[num x1 x2 x3 x4 x5 x6 outN];
elseif ninp==7
x1= (inp(:,1) - min(inp(:,1))) / (max(inp(:,1))-min(inp(:,1)));
x2= (inp(:,2) - min(inp(:,2))) / (max(inp(:,2))-min(inp(:,2)));
x3= (inp(:,3) - min(inp(:,3))) / (max(inp(:,3))-min(inp(:,3)));
x4= (inp(:,4) - min(inp(:,4))) / (max(inp(:,4))-min(inp(:,4)));
x5= (inp(:,5) - min(inp(:,5))) / (max(inp(:,5))-min(inp(:,5)));
x6= (inp(:,6) - min(inp(:,6))) / (max(inp(:,6))-min(inp(:,6)));
x7= (inp(:,7) - min(inp(:,7))) / (max(inp(:,7))-min(inp(:,7)));
infoN=[num x1 x2 x3 x4 x5 x6 x7 outN];
elseif ninp==8
x1= (inp(:,1) - min(inp(:,1))) / (max(inp(:,1))-min(inp(:,1)));
x2= (inp(:,2) - min(inp(:,2))) / (max(inp(:,2))-min(inp(:,2)));
x3= (inp(:,3) - min(inp(:,3))) / (max(inp(:,3))-min(inp(:,3)));
x4= (inp(:,4) - min(inp(:,4))) / (max(inp(:,4))-min(inp(:,4)));
x5= (inp(:,5) - min(inp(:,5))) / (max(inp(:,5))-min(inp(:,5)));
x6= (inp(:,6) - min(inp(:,6))) / (max(inp(:,6))-min(inp(:,6)));
x7= (inp(:,7) - min(inp(:,7))) / (max(inp(:,7))-min(inp(:,7)));
x8= (inp(:,8) - min(inp(:,8))) / (max(inp(:,8))-min(inp(:,8)));
infoN=[num x1 x2 x3 x4 x5 x6 x7 x8 outN];
elseif ninp==9
x1= (inp(:,1) - min(inp(:,1))) / (max(inp(:,1))-min(inp(:,1)));
x2= (inp(:,2) - min(inp(:,2))) / (max(inp(:,2))-min(inp(:,2)));
x3= (inp(:,3) - min(inp(:,3))) / (max(inp(:,3))-min(inp(:,3)));
x4= (inp(:,4) - min(inp(:,4))) / (max(inp(:,4))-min(inp(:,4)));
x5= (inp(:,5) - min(inp(:,5))) / (max(inp(:,5))-min(inp(:,5)));
x6= (inp(:,6) - min(inp(:,6))) / (max(inp(:,6))-min(inp(:,6)));
x7= (inp(:,7) - min(inp(:,7))) / (max(inp(:,7))-min(inp(:,7)));
x8= (inp(:,8) - min(inp(:,8))) / (max(inp(:,8))-min(inp(:,8)));
x9= (inp(:,9) - min(inp(:,9))) / (max(inp(:,9))-min(inp(:,9)));
infoN=[num x1 x2 x3 x4 x5 x6 x7 x8 x9 outN];

end

