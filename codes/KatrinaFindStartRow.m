

% Initialize variables.
%filename = 'C:\Users\rasmussen\Desktop\Matlab\OF_A6.txt';
filename=file;
delimiter = '\t';
endRow = 28;

% Format for each line of text:
%   column1: text (%s)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%s%*s%*s%*s%*s%*s%*s%[^\n\r]';

% Open the text file.
fileID = fopen(filename,'r');

% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, endRow, 'Delimiter', delimiter, 'TextType', 'string', 'ReturnOnError', false, 'EndOfLine', '\r\n');

% Close the text file.
fclose(fileID);

% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

% Create output variable
OFA6 = [dataArray{1:end-1}];

% Clear temporary variables
idx = find(contains(OFA6,'CH1'));
commapresent=find(contains(OFA6(idx),','));
commaAbsent=isempty(commapresent);
clearvars commapresent delimiter endRow formatSpec dataArray ans OF_A&;

startRow=idx+1