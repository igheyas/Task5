function[TM]=gpTime(tm)
n=size(tm);
n1=n(1,1);
n2=n(1,2);

TM=[];
%{
Convert time variable to Time
%}
k=1;
while k<=n1
v=tm(k,1); % v is a table
v1=v{1,1};% v1 is a cell array: for some reason it is becoming duration
%{
v2=cell2mat(v1); % v2 is a char
u1=v2(1,1:2);
u2=v2(1,4:5);
u3=v2(1,7:end);
u=strcat(u1,u2,u3);
UV=duration(sscanf(u, '%2d%2d%2d').');
%}
UV=v1;
TM=[TM;UV];

    k=k+1
end %while k<=n1
