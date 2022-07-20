clear;
clc;
[file,path] = uigetfile('*.*');
if isequal(file,0)
    disp('Please select the file .wav');
    
else
    f=fullfile(path, file);
    disp(['u selected: ', f]);
    [y,fs] = audioread(f);
    nbits=length(y);
sound(y,fs);
end
