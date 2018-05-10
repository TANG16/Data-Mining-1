clear;

load('all.mat')
load('size.mat');

totalData1=[oneTrain;oneTest];
totalLabel1=[trainLabel1;testLabel1];
[s,z]=size(totalData1);
nnlabel1=zeros(s,10);
k=1;
for i=1:10
    for j=1:personOneSize(i)
        %totalLabel1(k)
        nnlabel1(k,totalLabel1(k)+1)=1;
        k=k+1;
        %break;
    end
    %break;
end


totalData2=[twoTrain;twoTest];
totalLabel2=[trainLabel2;testLabel2];
[s,z]=size(totalData2);
nnlabel2=zeros(s,10);
k=1;
for i=1:10
    for j=1:personTwoSize(i)
        %totalLabel1(k)
        nnlabel2(k,totalLabel2(k)+1)=1;
        k=k+1;
        %break;
    end
    %break;
end


totalData3=[threeTrain;threeTest];
totalLabel3=[trainLabel3;testLabel3];
[s,z]=size(totalData3);
nnlabel3=zeros(s,10);
k=1;
for i=1:10
    for j=1:personThreeSize(i)
        %totalLabel1(k)
        nnlabel3(k,totalLabel3(k)+1)=1;
        k=k+1;
        %break;
    end
    %break;
end


totalData4=[fourTrain;fourTest];
totalLabel4=[trainLabel4;testLabel4];
[s,z]=size(totalData4);
nnlabel4=zeros(s,10);
k=1;
for i=1:10
    for j=1:personFourSize(i)
        %totalLabel1(k)
        nnlabel4(k,totalLabel4(k)+1)=1;
        k=k+1;
        %break;
    end
    %break;
end


totalData5=[fiveTrain;fiveTest];
totalLabel5=[trainLabel5;testLabel5];
[s,z]=size(totalData5);
nnlabel5=zeros(s,10);
k=1;
for i=1:10
    for j=1:personFiveSize(i)
        %totalLabel1(k)
        nnlabel5(k,totalLabel5(k)+1)=1;
        k=k+1;
        %break;
    end
    %break;
end