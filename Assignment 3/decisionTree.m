%T1 = readtable('x2_train.csv');
%T2 = readtable('y2.csv');
%fitctree(T1,T2)
rng(1); % For reproducibility
%MdlDefault = fitctree(T1,T2,'CrossVal','on');
%numBranches = @(x)sum(x.IsBranch);
%mdlDefaultNumSplits = cellfun(numBranches, MdlDefault.Trained);

%figure;
%histogram(mdlDefaultNumSplits)
%view(MdlDefault.Trained{1},'Mode','graph')
Mdl7 = fitctree(fiveTrain,trainLabel5,'MaxNumSplits',7,'CrossVal','on');
%view(Mdl7.Trained{1},'Mode','graph')
%T3 = readtable('test_x21.csv');
%T4 = readtable('gh.csv');
label = predict(Mdl7.Trained{1},fiveTest);
%q = table2array(testLabel1);
ncols = 1;
nrows = 54;
count = 0;

for c = 1:ncols
    for r = 1:nrows
     if label(r,c) == testLabel1(r,c)
     else
         count = count + 1;
     end
    end
end

disp (count);
