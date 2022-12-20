%%%%%%%%%%%%%%%File name reading%%%%%%%%%%%%%%%%%
function[FullTimeStampsFilename,GPSFilename]=filenameReading(RN)
FF=readtable('FFF.xlsx');
n=size(FF);
n1=n(1,1);
K=1;
while K<=n1
gh=table2array(FF(K,1));
if gh==RN
GPSFilename=FF(K,3);
GPSFilename = table2cell(GPSFilename);
GPSFilename =string(cellstr(GPSFilename));

FullTimeStampsFilename=FF(K,4);
FullTimeStampsFilename=table2cell(FullTimeStampsFilename);

FullTimeStampsFilename=string(cellstr(FullTimeStampsFilename)); 
break
end%if gh==RN
    K=K+1;
end%while K<=n1
