function X1=rNorm(X)
run Norm;
if ninp==1
a=X(1,1);
v1= a*(max(inp(:,1))-min(inp(:,1)))+ min(inp(:,1));
X1= [v1]
elseif ninp==2
a=X(1,1); b=X(1,2);
v1= a*(max(inp(:,1))-min(inp(:,1)))+ min(inp(:,1));
v2= b*(max(inp(:,2))-min(inp(:,2)))+ min(inp(:,2));
X1= [v1 v2]
elseif ninp==3
a=X(1,1); b=X(1,2); c=X(1,3);
v1= a*(max(inp(:,1))-min(inp(:,1)))+ min(inp(:,1));
v2= b*(max(inp(:,2))-min(inp(:,2)))+ min(inp(:,2));
v3= c*(max(inp(:,3))-min(inp(:,3)))+ min(inp(:,3));
X1= [v1 v2 v3]
elseif ninp==4
a=X(1,1); b=X(1,2); c=X(1,3); d=X(1,4);
v1= a*(max(inp(:,1))-min(inp(:,1)))+ min(inp(:,1));
v2= b*(max(inp(:,2))-min(inp(:,2)))+ min(inp(:,2));
v3= c*(max(inp(:,3))-min(inp(:,3)))+ min(inp(:,3));
v4= d*(max(inp(:,4))-min(inp(:,4)))+ min(inp(:,4));
X1= [v1 v2 v3 v4]
elseif ninp==5
a=X(1,1); b=X(1,2); c=X(1,3); d=X(1,4); e=X(1,5);
v1= a*(max(inp(:,1))-min(inp(:,1)))+ min(inp(:,1));
v2= b*(max(inp(:,2))-min(inp(:,2)))+ min(inp(:,2));
v3= c*(max(inp(:,3))-min(inp(:,3)))+ min(inp(:,3));
v4= d*(max(inp(:,4))-min(inp(:,4)))+ min(inp(:,4));
v5= e*(max(inp(:,5))-min(inp(:,5)))+ min(inp(:,5));
X1= [v1 v2 v3 v4 v5]
elseif ninp==6
a=X(1,1); b=X(1,2); c=X(1,3); d=X(1,4); e=X(1,5); f=X(1,6);
v1= a*(max(inp(:,1))-min(inp(:,1)))+ min(inp(:,1));
v2= b*(max(inp(:,2))-min(inp(:,2)))+ min(inp(:,2));
v3= c*(max(inp(:,3))-min(inp(:,3)))+ min(inp(:,3));
v4= d*(max(inp(:,4))-min(inp(:,4)))+ min(inp(:,4));
v5= e*(max(inp(:,5))-min(inp(:,5)))+ min(inp(:,5));
v6= f*(max(inp(:,6))-min(inp(:,6)))+ min(inp(:,6));
X1= [v1 v2 v3 v4 v5 v6]
elseif ninp==7
a=X(1,1); b=X(1,2); c=X(1,3); d=X(1,4); e=X(1,5); f=X(1,6); g=X(1,7);
v1= a*(max(inp(:,1))-min(inp(:,1)))+ min(inp(:,1));
v2= b*(max(inp(:,2))-min(inp(:,2)))+ min(inp(:,2));
v3= c*(max(inp(:,3))-min(inp(:,3)))+ min(inp(:,3));
v4= d*(max(inp(:,4))-min(inp(:,4)))+ min(inp(:,4));
v5= e*(max(inp(:,5))-min(inp(:,5)))+ min(inp(:,5));
v6= f*(max(inp(:,6))-min(inp(:,6)))+ min(inp(:,6));
v7= g*(max(inp(:,7))-min(inp(:,7)))+ min(inp(:,7));
X1= [v1 v2 v3 v4 v5 v6 v7]
elseif ninp==8
a=X(1,1); b=X(1,2); c=X(1,3); d=X(1,4); e=X(1,5); f=X(1,6); g=X(1,7); h=X(1,8);
v1= a*(max(inp(:,1))-min(inp(:,1)))+ min(inp(:,1));
v2= b*(max(inp(:,2))-min(inp(:,2)))+ min(inp(:,2));
v3= c*(max(inp(:,3))-min(inp(:,3)))+ min(inp(:,3));
v4= d*(max(inp(:,4))-min(inp(:,4)))+ min(inp(:,4));
v5= e*(max(inp(:,5))-min(inp(:,5)))+ min(inp(:,5));
v6= f*(max(inp(:,6))-min(inp(:,6)))+ min(inp(:,6));
v7= g*(max(inp(:,7))-min(inp(:,7)))+ min(inp(:,7));
v8= h*(max(inp(:,8))-min(inp(:,8)))+ min(inp(:,8));
X1= [v1 v2 v3 v4 v5 v6 v7 v8]
elseif ninp==9
a=X(1,1); b=X(1,2); c=X(1,3); d=X(1,4); e=X(1,5); f=X(1,6); g=X(1,7); h=X(1,8); l=X(1,9);
v1= a*(max(inp(:,1))-min(inp(:,1)))+ min(inp(:,1));
v2= b*(max(inp(:,2))-min(inp(:,2)))+ min(inp(:,2));
v3= c*(max(inp(:,3))-min(inp(:,3)))+ min(inp(:,3));
v4= d*(max(inp(:,4))-min(inp(:,4)))+ min(inp(:,4));
v5= e*(max(inp(:,5))-min(inp(:,5)))+ min(inp(:,5));
v6= f*(max(inp(:,6))-min(inp(:,6)))+ min(inp(:,6));
v7= g*(max(inp(:,7))-min(inp(:,7)))+ min(inp(:,7));
v8= h*(max(inp(:,8))-min(inp(:,8)))+ min(inp(:,8));
v9= l*(max(inp(:,9))-min(inp(:,9)))+ min(inp(:,9));
X1= [v1 v2 v3 v4 v5 v6 v7 v8 v9]

end
