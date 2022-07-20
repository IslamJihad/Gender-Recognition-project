function Hd = male_f

Fs = 16000;  % Sampling Frequency more filter banks means higher frequency and less data so we choose the midlle of them

Fstop1 = 78;             % First Stopband Frequency
Fstop2 = 182;            % Second Stopband Frequency
Fpass1 = 82;             % First Passband Frequency
Fpass2 = 178;            % Second Passband Frequency
Astop1 = 60;             % First Stopband Attenuation (dB)
Apass  = 1;              % Passband Ripple (dB)
Astop2 = 80;             % Second Stopband Attenuation (dB)
match  = 'stopband';     % Band to match exactly

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.bandpass(Fstop1, Fpass1, Fpass2, Fstop2, Astop1, Apass, ...
                      Astop2, Fs);
Hd = design(h, 'butter', 'MatchExactly', match);
