% import the wav file
[audio, fs] = audioread('myvoice1.wav');
if size(audio, 2) == 2
    audio = mean(audio, 2);
end

%plot the original audio
sound(audio, fs);
pause(length(audio)/fs + 1);

%Aplly the low_pass filter

filter_order = 40;
cutoff_freq=1000;
normalized_cutoff = cutoff_freq/(fs/2);

b_low = fir1(filter_order, normalized_cutoff, 'low');
a_low = 1;

low_pass_filter = filter(b_low, a_low, audio);

% Play the low-pass filtered audio
sound(low_pass_filter, fs);
pause(length(low_pass_filter)/fs + 1);


%plot the original signal
figure;
subplot(2,1,1);
plot(audio);
title('Audio WAveform');
xlabel('Samples');
ylabel('Amplitude');

%plot the low_pass signal
subplot(2,1,2);
plot(low_pass_filter,'r');
title('low-pass filtred audio');
xlabel('samples');
ylabel('Amplitude');


%Aplly the high-pass filter of order 4

 order = 40; % Order of the filter
 fc = 1000; % Cut-off frequency

 wn = fc/(fs/2);%normalized cut-off frequency
 b_high = fir1(order, wn, 'high');
 high_pass_filter = filter(b_high, 1 , audio);
 
 
%play the high_pass audio
sound(high_pass_filter, fs);
pause(length(high_pass_filter)/fs + 1);

%plot the original signal
figure;
subplot(2,1,1);
plot(audio);
title('Audio WAveform');
xlabel('Samples');
ylabel('Amplitude');

 
%plot the filtered signal
subplot(2,1,2);
plot(high_pass_filter,'r');
title('high-pass filtred audio');
xlabel('Samples');
ylabel('Amplitude');

% both filter
a = 1;
filtered_audio_both = filter(b_high,a, low_pass_filter);

% plot the original and both filtered
figure;
subplot(2,1,1);
plot(audio);
title('original signal');

subplot(2,1,2);
plot(filtered_audio_both);
title('Both filter');

%play the filtered_audio_both 
sound(filtered_audio_both, fs);
pause(length(filtered_audio_both)/fs + 1);


saveas(gcf, 'both_filters_applied_signal.png');
audiowrite('both_filters_applied_audio.wav', filtered_audio_both, fs);


% Calculate the Fourier Transform of the audio signal
n = length(audio); 

nextpow2_len = 2^nextpow2(n); 
audio = [audio; zeros(nextpow2_len - n, 1)]; 

% Compute the Fourier Transform
fft_audio = fft(audio);
frequencies = (0:nextpow2_len-1) * (fs / nextpow2_len);
frequencies = fftshift(frequencies - fs / 2);

% Plot the magnitude of the Fourier Transform
figure;
plot(frequencies, abs(fftshift(fft_audio))); % Plot the magnitude of the FFT
title('Fourier Transform of Original Audio Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

% Save the plot
saveas(gcf, 'fourier_transform_signal.png');

% Design a low-pass filter in the frequency domain
cutoff_freq_fft = 40; 
filter_mask = abs(frequencies) <= cutoff_freq_fft; % Create the filter mask

% Ensure filter_mask is the same size as fft_audio
filter_mask = filter_mask(:); % Ensure it is a column vector
fft_audio = fft_audio(:); 

% Apply the filter to the shifted FFT
fft_audio_shifted = fftshift(fft_audio); 
fft_audio_filtered = fft_audio_shifted .* filter_mask; 

% Shift back and transform to the time domain
fft_audio_filtered = ifftshift(fft_audio_filtered); 
filtered_signal = real(ifft(fft_audio_filtered)); % Get the real part of the filtered signal

% Plot and save the filtered Fourier Transform
figure;
subplot(2,1,1);
plot(frequencies, abs(fft_audio_shifted)); % Plot original FFT (shifted)
title('Original FFT');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

subplot(2,1,2);
plot(frequencies, abs(fft_audio_filtered)); % Plot filtered FFT (shifted)
title('Filtered FFT');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
saveas(gcf, 'fourier_transform_low_pass_filtered_fixed.png'); % Save the plot

% Save the filtered signal in the time domain
audiowrite('low_pass_filtered_fft_audio.wav', filtered_signal, fs);

% Play the filtered audio
sound(filtered_signal, fs);
pause(length(filtered_signal) / fs + 1);


% Design the high-pass filter (cutoff frequency = 40 Hz)
cutoff_freq_fft = 40; % Cut-off frequency for the high-pass filter (Hz)
filter_mask_high = abs(frequencies) >= cutoff_freq_fft; % High-pass filter mask


% Ensure filter_mask and fft_audio have the same dimensions
filter_mask_high = filter_mask_high(:);
fft_audio = fft_audio(:);

% Apply the high-pass filter in the frequency domain
fft_audio_shifted = fftshift(fft_audio); % Shift the FFT to center the zero frequency
fft_audio_filtered_high = fft_audio_shifted .* filter_mask_high; % Apply the filter

% Shift back and inverse FFT
fft_audio_filtered_high = ifftshift(fft_audio_filtered_high); % Shift back to original order
filtered_signal_high = real(ifft(fft_audio_filtered_high)); % Get the real part of the filtered signal


% Plot and save the filtered Fourier Transform
figure;
subplot(2, 1, 1);
plot(frequencies, abs(fft_audio_shifted), 'LineWidth', 2, 'Color', [0, 0, 1]); 
title('Original FFT');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

subplot(2, 1, 2);
plot(frequencies, abs(fft_audio_filtered_high)); % Plot filtered FFT
title('Filtered FFT (High-pass)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');


saveas(gcf, 'fourier_transform_high_pass_filtered.png');

% Save the filtered signal in the time domain
audiowrite('high_pass_filtered_fft_audio.wav', filtered_signal_high, fs);

% Play the filtered audio
sound(filtered_signal_high, fs);
pause(length(filtered_signal_high) / fs + 1);
