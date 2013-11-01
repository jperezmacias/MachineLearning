function classes=MyNN(traindata, trainclass,testdata)


classes=zeros(1,36);
KN=zeros(36,3);

for i=1:size(testdata,2)
% copy=repmat(traindata(:,i),[1 36])
% D=pdist2(copy',traindata');    
% D=pdist2(traindata',traindata');
copy=repmat(testdata(:,i),[1 size(traindata,2)])
D=pdist2(traindata',testdata');    

[Y,I]=sort(D,1);
KN(i,1:3)=[I(1:3,i)'];

classes(i)=trainclass(KN(i,1));

end


