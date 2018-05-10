%T1 = readtable('x2_train.csv');
%T2 = readtable('y2.csv');
%fitctree(T1,T2)
%rng(1); % For reproducibility
Mdsvm = fitcecoc(oneTrain,trainLabel1);
%view(Mdl7.Trained{1},'Mode','graph')
% T3 = readtable('test_x21.csv');
% T4 = readtable('gh.csv');
 label = predict(Mdsvm.Trained{1},oneTest);
% %q = table2array(testLabel1);
 ncols = 1;
 nrows = 4342;
 count = 0;
% 
for c = 1:ncols
    for r = 1:nrows
     if label(r,c) == testLabel1(r,c)
     else
         count = count + 1;
     end
    end
end

disp (count);