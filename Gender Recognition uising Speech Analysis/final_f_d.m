clear;
clc;

filename= 'Male\arctic_a0007.wav';

[y,Fs]= audioread(filename);
N=length(y);

sound(y,Fs);

%plot the input signal
t = linspace(0,N/Fs,N);
figure(1);
plot(t,y);
title('voice massege');

%FFT of the voice signal
FFTy=fft(y,N);
w=Fs*linspace(0,1,N);
figure(2);
plot(w,abs(FFTy))
axis([0 8000 0 max(abs(FFTy))])
title('2');

%finding freq where the maximun occurs
[val,ind]=max(FFTy(1:N/2));
disp(ind);
fo=ind*Fs/N;

disp('maximum occured at freq=')
disp(fo)

%decision making
if(fo<160 & fo>85)
    disp('THE VOICE IS OF A MALE');
elseif (fo<255 & fo>165)
    disp('THE VOICE IS OF A FEMALE');
    else
     disp('THE VOICE IS unknown');
        
end


