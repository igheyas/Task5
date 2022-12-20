clear all
clc 
close all
RN=42;
%%%%%%%%%%%%%%%File name reading%%%%%%%%%%%%%%%%%
[FullTimeStampsFilename,GPSFilename]=filenameReading(RN);

%FullTimeteps data: formatting time variables

O=readtable(FullTimeStampsFilename);
O11=O(:,1:2);

[startTime,EndTime]=fullTimeStamps3(O11);
V=[startTime,EndTime];
writematrix(V,'FTime.xlsx')
%{
'timeintSec' function calculated minimum time interval and maximum time
interval
%}
[mn,mx]=timeintSec(startTime,EndTime);
%GPS data
T = readtable(GPSFilename);
tm=T(:,4); % Time variable
[TM]=gpTime2(tm)
writematrix(TM,'GPD.xlsx')
