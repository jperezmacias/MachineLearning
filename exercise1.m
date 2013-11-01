close all, clear all
x1=rand(1,5000)*5; % points from 1 to 5 randomly generated
x2=rand(1,5000)*5;
load ex1_data
testdata=[x1;x2];

classes=MyNN(traindata, trainclass,testdata)


figure, gscatter(traindata(1,:),traindata(2,:),trainclass)



figure, gscatter(x1,x2,classes)


