function classes = MyNN(traindata, trainclass, testdata)
    % Initialize an array to store the predicted classes for each test sample
    classes = zeros(1, 36);
    
    % Initialize a matrix to store the indices of the 3 nearest neighbors for each test sample
    KN = zeros(36, 3);
    
    % Loop through each test sample
    for i = 1:size(testdata, 2)
        % Repeat the current test sample to create a matrix with the same dimensions as the training data
        copy = repmat(testdata(:, i), [1, size(traindata, 2)]);
        
        % Calculate the Euclidean distance between the current test sample and all training samples
        D = pdist2(traindata', copy');
        % Alternatively, you can use the following line to compute distances between training samples:
        % D = pdist2(traindata', traindata');
        
        % Sort the distances and get the indices of the 3 nearest neighbors for the current test sample
        [Y, I] = sort(D, 1);
        KN(i, 1:3) = [I(1:3, i)'];
        
        % Assign the class of the nearest neighbor as the predicted class for the current test sample
        classes(i) = trainclass(KN(i, 1));
    end
end
