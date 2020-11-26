%   About this script:
%      -  Cleans up environemtn customizations of the demo environment 
%      -  Set to run at shutdown

% Reset the location where generated code and other temporary files are
% created (slprj) to the default:
Simulink.fileGenControl('reset');

% Close all data dictionaries.  Discard unsaved changes
Simulink.data.dictionary.closeAll('-discard')

% Use Simulink Project API to get the current project:
p = slproject.getCurrentProject;
projectRoot = p.RootFolder;

% Delete bin folder and all its contents
myBinFolder = fullfile(projectRoot, 'support_files\bin');
% if isfolder(myBinFolder)
rmdir(myBinFolder, 's')
% end
