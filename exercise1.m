% Close all figures and clear the workspace
close all, clear all

% Generate 5000 random points between 1 and 5 for x1 and x2
x1 = rand(1, 5000) * 5;
x2 = rand(1, 5000) * 5;

% Load the data from the file "ex1_data.mat"
load ex1_data

% Create a matrix "testdata" containing the randomly generated x1 and x2 points
testdata = [x1; x2];

% Call the "MyNN" function to predict the classes for the testdata
classes = MyNN(traindata, trainclass, testdata);

% Plot the training data points with different classes shown in different colors
figure
gscatter(traindata(1,:), traindata(2,:), trainclass)

% Plot the test data points with predicted classes shown in different colors
figure
gscatter(x1, x2, classes)



