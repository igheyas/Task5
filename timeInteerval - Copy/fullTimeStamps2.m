function[startTime,EndTime]=fullTimeStamps2(O11)
startTime=O11(:,1);
n=size(startTime);
n1=n(1,1);
TT1=[];
K=1;
while K<=n1
oo1=startTime(K,1);%table
oo1=O11(K,1);%table
oo2=oo1{1,1}; %oo2 is a cell array
oo3=cell2mat(oo2);% oo3 is a char
oo4=oo3(10:end);
oo5=str2num(oo4);
oo6=oo5/1000;
oo7=num2str(oo6);
newText=oo7(2:end);
%%%%%%%%%%%%%%%%
%newText='.'
%oo8 = replaceBetween(oo3,8,11,newText)
nb=size(oo3);
nb2=nb(1,2);
nb3=nb2-8;
X= replaceBetween(oo3,9,nb2,newText);

infmt = 'hh:mm:ss.SSS';
infmt = 'hh:mm:ss.SSS';
%D = duration(X,'Format','hh:mm:ss.SSSS')
outfmt = 'hh:mm:ss.SSS';
D = duration(X,'InputFormat',infmt,'Format',outfmt)

TT1=[TT1;D];
%u=strcat(u1,u2,u3);
    K=K+1;
end%while K<=1
startTime=[];
startTime=TT1;

%%%%%%%%%%%Endtime%%%%%%%%%%%%%%%%
endTime=O11(:,2);

TT1=[];
K=1;
while K<=n1
oo1=endTime(K,1);%table

oo2=oo1{1,1}; %oo2 is a cell array
oo3=cell2mat(oo2);% oo3 is a char
oo4=oo3(10:end);
oo5=str2num(oo4);
oo6=oo5/1000;
oo7=num2str(oo6);
newText=oo7(2:end);
nb=size(oo3);
nb2=nb(1,2);
nb3=nb2-8;
X= replaceBetween(oo3,9,nb2,newText);

infmt = 'hh:mm:ss.SSS';
infmt = 'hh:mm:ss.SSS';
%D = duration(X,'Format','hh:mm:ss.SSSS')
outfmt = 'hh:mm:ss.SSS';
D = duration(X,'InputFormat',infmt,'Format',outfmt)

TT1=[TT1;D];
%u=strcat(u1,u2,u3);
    K=K+1;
end%while K<=1
EndTime=TT1;

