%   About this script:
%      -  Sets up the environment for a flawless exercise of the reference
%      application
%      -  Set to run at startup

% Use Simulink Project API to get the current project:
p = slproject.getCurrentProject;
projectRoot = p.RootFolder;
parentfolder = fullfile(projectRoot,'\support_files');

% Create bin folder if not exisiting yet
myCacheFolder = fullfile(projectRoot, 'support_files\bin');
% if ~isfolder(myCacheFolder)
    mkdir(parentfolder,'bin')
% end

% Set ChacheFolder and CodeGenFolder to bin
Simulink.fileGenControl('set', 'CacheFolder', myCacheFolder, ...
   'CodeGenFolder', myCacheFolder);

% Open reference application getting started doc file 
edit('GettingStarted')

