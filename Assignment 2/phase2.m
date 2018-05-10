 
% Define a starting folder wherever you want
warning('off','all');
topLevelFolder = uigetdir(pwd);
if topLevelFolder == 0
	return;
end

allSubFolders = genpath(topLevelFolder);
remain = allSubFolders;
listOfFolderNames = {};
listOfFileNames = {};
listFileNames = {};
listOfFullFileNamesPath = {};

while true
	[singleSubFolder, remain] = strtok(remain, pathsep);
	if isempty(singleSubFolder)
		break;
	end
	listOfFolderNames = [listOfFolderNames singleSubFolder]
end

numberOfFolders = length(listOfFolderNames)

%Process all text files in those folders.
 for k = 1 : numberOfFolders
% 	%Get this folder and print it out.
	thisFolder = listOfFolderNames{k};
	
%Get filenames of all TXT files.
	filePattern = sprintf('%s/*.csv', thisFolder);
	baseFileNames = dir(filePattern);
	numberOfFiles = length(baseFileNames);
% Now we have a list of all text files in this folder.
 	
	if numberOfFiles >= 1
		%Go through all those text files.
		for f = 1 : numberOfFiles
			fullFileName = fullfile(thisFolder, baseFileNames(f).name);
            listOfFullFileNamesPath = [listOfFullFileNamesPath fullFileName];
            listOfFileNames= [listOfFileNames baseFileNames(f).name];
		end
    else
	end
end

listOfFileNames = transpose(listOfFileNames);
listOfFullFileNamesPath = transpose(listOfFullFileNamesPath);

fileNameMatrix = [listOfFileNames listOfFullFileNamesPath];
[~,idx] = sort(fileNameMatrix(:,1)); % sort just the first column
sortedmat = fileNameMatrix(idx,:);   % sort the whole matrix using the sort indice

[m,n] = size(sortedmat);

i = 1;
j=1;
list = {'about','and','can','cop','deaf','decide','find','father','go out','hearing'};

about=[]; and=[];can=[];cop=[];deaf=[];decide=[];find=[];father=[];goout=[];hearing=[];
meanAbout=[]; aboutCount=0; stdAbout=[]; meanAnd = []; stdAnd = []; stdCan = [];
meanCan = []; stdCop = []; meanCop=[]; stdDeaf = []; meanDeaf = []; stdDecide = [];
meanDecide = []; stdFind = []; meanFind = []; stdFather=[]; meanFather=[]; stdGoout=[];
meanGoout = []; stdHearing = []; meanHearing = [];

for row=1:size(sortedmat,1)
    if (contains(lower(sortedmat(row,1:1)),lower(list(1))))
        temp=readtable(string((sortedmat(row,1:1))));
        rows=size(temp);
        if(rows(1) ~= 0)
            tempMean=mean(table2array(temp(:,1:34)));
            tempStd = std(table2array(temp(:,1:34)));
            stdAbout=[stdAbout;tempStd];
            meanAbout=[meanAbout;tempMean];
            about = [about;temp];
        end
    end
    
    if (contains(lower(sortedmat(row,1:1)),lower(list(2))))
        temp=readtable(string((sortedmat(row,1:1))));
        rows=size(temp);
        if(rows(1) ~= 0)
            tempMean=mean(table2array(temp(:,1:34)));
            tempStd = std(table2array(temp(:,1:34)));
            stdAnd=[stdAnd;tempStd];
            meanAnd=[meanAnd;tempMean];
            and = [and;temp];
        end
    end
    
    if (contains(lower(sortedmat(row,1:1)),lower(list(3))))
        temp=readtable(string((sortedmat(row,1:1))));
        rows=size(temp);
        if(rows(1) ~= 0)
            tempMean=mean(table2array(temp(:,1:34)));
            tempStd = std(table2array(temp(:,1:34)));
            stdCan=[stdCan;tempStd];
            meanCan=[meanCan;tempMean];
            can = [can;temp];
        end
    end
    
    if (contains(lower(sortedmat(row,1:1)),lower(list(4))))
        temp=readtable(string((sortedmat(row,1:1))));
        rows=size(temp);
        if(rows(1) ~= 0)
            tempMean=mean(table2array(temp(:,1:34)));
            tempStd = std(table2array(temp(:,1:34)));
            stdCop=[stdCop;tempStd];
            meanCop=[meanCop;tempMean];
            cop = [cop;temp];
        end
    end
    
    if (contains(lower(sortedmat(row,1:1)),lower(list(5))))
        temp=readtable(string((sortedmat(row,1:1))));
        rows=size(temp);
        if(rows(1) ~= 0)
            tempMean=mean(table2array(temp(:,1:34)));
            tempStd = std(table2array(temp(:,1:34)));
            stdDeaf=[stdDeaf;tempStd];
            meanDeaf=[meanDeaf;tempMean];
            deaf = [deaf;temp];
        end
    end
    
    if (contains(lower(sortedmat(row,1:1)),lower(list(6))))
        temp=readtable(string((sortedmat(row,1:1))));
        rows=size(temp);
        if(rows(1) ~= 0)
            tempMean=mean(table2array(temp(:,1:34)));
            tempStd = std(table2array(temp(:,1:34)));
            stdDecide=[stdDecide;tempStd];
            meanDecide=[meanDecide;tempMean];
            decide = [decide;temp];
        end
    end
    
    if (contains(lower(sortedmat(row,1:1)),lower(list(7))))
        temp=readtable(string((sortedmat(row,1:1))));
        rows=size(temp);
        if(rows(1) ~= 0)
            tempMean=mean(table2array(temp(:,1:34)));
            tempStd = std(table2array(temp(:,1:34)));
            stdFind=[stdFind;tempStd];
            meanFind=[meanFind;tempMean];
            find = [find;temp];
        end
    end
    
    if (contains(lower(sortedmat(row,1:1)),lower(list(8))))
        temp=readtable(string((sortedmat(row,1:1))));
        rows=size(temp);
        if(rows(1) ~= 0)
            tempMean=mean(table2array(temp(:,1:34)));
            tempStd = std(table2array(temp(:,1:34)));
            stdFather=[stdFather;tempStd];
            meanFather=[meanFather;tempMean];
            father = [father;temp];
        end
    end
    
    if (contains(lower(sortedmat(row,1:1)),lower(list(9))))
        temp=readtable(string((sortedmat(row,1:1))));
        rows=size(temp);
        if(rows(1) ~= 0)
            tempMean=mean(table2array(temp(:,1:34)));
            tempStd = std(table2array(temp(:,1:34)));
            stdGoout=[stdGoout;tempStd];
            meanGoout=[meanGoout;tempMean];
            goout = [goout;temp];
        end
    end
    
    if (contains(lower(sortedmat(row,1:1)),lower(list(10))))
        temp=readtable(string((sortedmat(row,1:1))));
        rows=size(temp);
        if(rows(1) ~= 0)
            tempMean=mean(table2array(temp(:,1:34)));
            tempStd = std(table2array(temp(:,1:34)));
            stdHearing=[stdHearing;tempStd];
            meanHearing=[meanHearing;tempMean];
            hearing = [hearing;temp];
        end
    end
end

about = table2array(about(:,1:34));
and_v = table2array(and(:,1:34));
can = table2array(can(:,1:34));
cop = table2array(cop(:,1:34));
deaf = table2array(deaf(:,1:34));
father = table2array(father(:,1:34));
goout = table2array(goout(:,1:34));
hearing = table2array(hearing(:,1:34));
decide = table2array(decide(:,1:34));
find_v = table2array(find(:,1:34));
 
%Task 2

list_matrix = {about,and_v,can,cop,deaf,decide,father,find_v,goout,hearing};
mean_matrix = {meanDeaf,meanAbout,meanAnd,meanCan,meanCop,meanDecide,meanFind,meanFather,meanGoout,meanHearing};
std_matrix = {stdAbout,stdAnd,stdCan,stdCop,stdDecide,stdDeaf,stdFind,stdFather,stdGoout,stdHearing};
desktop = com.mathworks.mde.desk.MLDesktop.getInstance;
myGroup = desktop.addGroup('myGroup');
desktop.setGroupDocked('myGroup', 0);
myDim   = java.awt.Dimension(5, 2);   % 5 columns, 2 rows

desktop.setDocumentArrangement('myGroup', 2, myDim)
figH    = gobjects(1, 10);
bakWarn = warning('off','MATLAB:HandleGraphics:ObsoletedProperty:JavaFrame');
plottype = 0;

while plottype ~= 8
  disp('Enter 1 to plot mean')
  disp('Enter 2 to plot standard deviation')
  disp('Enter 3 to plot fft')
  disp('Enter 4 to plot DWT')
  disp('Enter 5 to plot pca')
  disp('Enter 6 to plot DCT')
  disp('Enter 7 to plot New Feature Matrix')
  disp('Enter 8 to exit')
  
  plottype = input('Enter one of the values from above list');
 
  switch plottype
     case 1
       feature = input('Enter one of the features from 1 to 34 :');
       for f = 1 : 10
         A = table2array(mean_matrix(1,f));  
         A = A(:,feature);
         figH(f) = figure('WindowStyle', 'docked', ...
         'Name', sprintf('Figure %d', f), 'NumberTitle', 'off');
         drawnow;
         pause(1);  % Magic, reduces rendering errors
         set(get(handle(figH(f)), 'javaframe'), 'GroupName', 'myGroup');
         plot(A);
         xlabel("mean")
         ylabel("amplitude")
       end
       
      case 2
         feature = input('Enter one of the features from 1 to 34 :');
      for f = 1 : 10
          A = table2array(std_matrix(1,f));  
          A = A(:,feature);
          figH(f) = figure('WindowStyle', 'docked', ...
          'Name', sprintf('Figure %d', f), 'NumberTitle', 'off');
          drawnow;
          pause(1);  % Magic, reduces rendering errors
          set(get(handle(figH(f)), 'javaframe'), 'GroupName', 'myGroup');
          plot(A);
          xlabel("Standard Deviation")
          ylabel("amplitude")
      end
      
     case 3
      feature = input('Enter one of the features from 1 to 34 :');
      for f = 1 : 10
        A = table2array(list_matrix(1,f));
        var = fft(A(:,feature));
        n = length(A);                         
        fshift = (-n/2:n/2-1)*(50/n);
        yshift = fftshift(var);
        figH(f) = figure('WindowStyle', 'docked', ...
        'Name', sprintf('Figure %d', f), 'NumberTitle', 'off');
        drawnow;
        pause(1);  % Magic, reduces rendering errors
        set(get(handle(figH(f)), 'javaframe'), 'GroupName', 'myGroup');
        plot(fshift,abs(yshift));
        xlabel("frequency")
        ylabel("amplitude")
      end

     case 4
         feature = input('Enter one of the features from 1 to 34 :');
      for f = 1 : 10
        A = table2array(list_matrix(1,f));
        [cA,cD] = wavedec(A(:,feature),4,'haar');
        figH(f) = figure('WindowStyle', 'docked', ...
        'Name', sprintf('Figure %d', f), 'NumberTitle', 'off');
        drawnow;
        pause(2);  % Magic, reduces rendering errors
        set(get(handle(figH(f)), 'javaframe'), 'GroupName', 'myGroup');
        plot(cA);
        xlabel("DWT coefficients")
        ylabel("amplitude")
      end
     
     case 5
      for f = 1 : 10
        A = table2array(list_matrix(1,f));
        covarianceMatrix = cov(A);
        [coeff,score,latent,tsquared,explained] = pca(covarianceMatrix);
        
        dataInPrincipalComponentSpace = A*coeff;  
        figH(f) = figure('WindowStyle', 'docked', ...
       'Name', sprintf('Figure %d', f), 'NumberTitle', 'off');
       drawnow;
       pause(2);  % Magic, reduces rendering errors
       set(get(handle(figH(f)), 'javaframe'), 'GroupName', 'myGroup');
       plot(coeff);
       xlabel("eigen vector coefficients")
       ylabel("amplitude")
      end
      
     case 6 
      feature = input('Enter one of the features from 1 to 34 :');
      for f = 1 : 10
      A = table2array(list_matrix(1,f));
      y = dct(A(:,feature))
      figH(f) = figure('WindowStyle', 'docked', ...
      'Name', sprintf('Figure %d', f), 'NumberTitle', 'off');
      drawnow;
      pause(2);  % Magic, reduces rendering errors
      set(get(handle(figH(f)), 'javaframe'), 'GroupName', 'myGroup');
      plot(y);
      xlabel("DCT coefficients")
      ylabel("amplitude")
      end
      
     case 7
      for f = 1 : 10
        A = table2array(list_matrix(1,f));
        covarianceMatrix = cov(A);
        [coeff,score,latent,tsquared,explained] = pca(covarianceMatrix);
        newMat = A*coeff;
        dataInPrincipalComponentSpace = A*coeff;  
        figH(f) = figure('WindowStyle', 'docked', ...
       'Name', sprintf('Figure %d', f), 'NumberTitle', 'off');
       drawnow;
       pause(2);  % Magic, reduces rendering errors
       set(get(handle(figH(f)), 'javaframe'), 'GroupName', 'myGroup');
       plot(newMat);
       xlabel("Data in PCA Space")
       ylabel("amplitude")
      end
      
     case 8
        break    
  end
end 
