function[startTime,EndTime]=fullTimeStamps3(O11)
PP=O11(:,1);
[DD]=mainfullTimeStamps(PP)


startTime=DD;
%%%%%%%%%%%%%%%%%%%%
PP=O11(:,2);
[DD]=mainfullTimeStamps(PP)

EndTime=DD;
