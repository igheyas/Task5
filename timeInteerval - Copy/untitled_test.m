%{

X='01:00:07.29';
%infmt = 'mm:ss.SSS';
infmt = 'hh:mm:ss.SSS';
%D = duration(X,'Format','hh:mm:ss.SSSS')
outfmt = 'hh:mm:ss.SSS';
D = duration(X,'InputFormat',infmt,'Format',outfmt)
%}
clear all
clc 
close all
RN=42;
%%%%%%%%%%%%%%%File name reading%%%%%%%%%%%%%%%%%
[FullTimeStampsFilename,GPSFilename]=filenameReading(RN);

%FullTimeteps data: formatting time variables

O=readtable(FullTimeStampsFilename);
O11=O(:,1:2);
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
X = replaceBetween(oo3,9,nb2,newText);

infmt = 'hh:mm:ss.SSS';
infmt = 'hh:mm:ss.SSS';
%D = duration(X,'Format','hh:mm:ss.SSSS')
outfmt = 'hh:mm:ss.SSS';
D = duration(X,'InputFormat',infmt,'Format',outfmt)
%oo4= insert(oo3,9," .");