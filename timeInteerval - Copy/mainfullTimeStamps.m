function[DD]=mainfullTimeStamps(PP)
n=size(PP);
n1=n(1,1);
X=[];
K=1;
while K<=n1
oo1=PP(K,1);%table

oo2=oo1{1,1}; %oo2 is a cell array
oo3=cell2mat(oo2);% oo3 is a char
u1=str2num(oo3(1,1:2));%hh
u2=str2num(oo3(4:5));%mm
u3=str2num(oo3(7:8));%ss
u4=str2num(oo3(10:end));%milliecond
u4=u4/1000; %convert into millieconds
u3=u3+u4;
x=[u1,u2,u3];
X=[X;x];


    K=K+1
end%while K<=1
DD=duration(X,'Format','hh:mm:ss.SSS')