# Audio Signal Processing with MATLAB

This project focuses on analyzing and processing audio signals using MATLAB. The goal is to apply various filters (low-pass and high-pass) to an audio signal, analyze the results in both time and frequency domains, and visualize the effects using Fourier Transform.


## Project Overview
The project involves the following steps:

Recording and Saving Audio: Record your voice and save it as a .wav file.

### Low-Pass Filtering:
Design a 40th-order low-pass FIR filter with a cutoff frequency of 1000 Hz, apply it to the audio signal, and save the filtered signal.

### High-Pass Filtering:
Design a 40th-order high-pass FIR filter with a cutoff frequency of 1000 Hz, apply it to the audio signal, and save the filtered signal.

### Combined Filtering:
Apply both filters sequentially to the original signal and save the result.

### Fourier Transform:
Compute the Fourier Transform of the original signal to analyze its frequency components.

### Filtering in Frequency Domain:
Apply low-pass and high-pass filters to the Fourier Transform of the signal and observe the changes in the frequency domain.

### Visualization:
Plot the original and filtered signals in both time and frequency domains.

## Repository Structure

### audio_files/: Contains the original and filtered audio files.

original_audio.wav: The original audio signal.

low_pass_filtered.wav: The audio signal after applying the low-pass filter.

high_pass_filtered.wav: The audio signal after applying the high-pass filter.

both_filters_applied.wav: The audio signal after applying both filters.

### matlab_scripts/: Contains MATLAB scripts for each step of the project.

record_audio.m: Script to record and save the audio.

low_pass_filter.m: Script to design and apply the low-pass filter.

high_pass_filter.m: Script to design and apply the high-pass filter.

fourier_transform.m: Script to compute and visualize the Fourier Transform.

apply_filters_frequency_domain.m: Script to apply filters in the frequency domain.

### plots/: Contains visualizations of the signals in both time and frequency domains.

original_signal.png: Time-domain plot of the original signal.

low_pass_filtered_signal.png: Time-domain plot of the low-pass filtered signal.

high_pass_filtered_signal.png: Time-domain plot of the high-pass filtered signal.

both_filters_applied_signal.png: Time-domain plot of the signal after applying both filters.

original_fft.png: Frequency-domain plot of the original signal.

low_pass_filtered_fft.png: Frequency-domain plot of the low-pass filtered signal.

high_pass_filtered_fft.png: Frequency-domain plot of the high-pass filtered signal.

# How to Run the Code
### Record Audio: Run record_audio.m to record your voice and save it as original_audio.wav.

### Apply Filters: Run low_pass_filter.m and high_pass_filter.m to apply the respective filters and save the filtered signals.

### Fourier Transform: Run fourier_transform.m to compute and visualize the Fourier Transform of the original signal.

### Filter in Frequency Domain: Run apply_filters_frequency_domain.m to apply filters in the frequency domain and observe the changes.

# **Audio Signal Processing with MATLAB**

This project focuses on **analyzing and processing audio signals** using MATLAB. The goal is to apply various filters (low-pass and high-pass) to an audio signal, analyze the results in both time and frequency domains, and visualize the effects using **Fourier Transform**.

---

## **Project Overview**

The project involves the following steps:

1. **Recording and Saving Audio**: Record your voice and save it as a `.wav` file.
2. **Low-Pass Filtering**: Design a 40th-order low-pass FIR filter with a cutoff frequency of **1000 Hz**, apply it to the audio signal, and save the filtered signal.
3. **High-Pass Filtering**: Design a 40th-order high-pass FIR filter with a cutoff frequency of **1000 Hz**, apply it to the audio signal, and save the filtered signal.
4. **Combined Filtering**: Apply both filters sequentially to the original signal and save the result.
5. **Fourier Transform**: Compute the Fourier Transform of the original signal to analyze its frequency components.
6. **Filtering in Frequency Domain**: Apply low-pass and high-pass filters to the Fourier Transform of the signal and observe the changes in the frequency domain.
7. **Visualization**: Plot the original and filtered signals in both time and frequency domains.

---

## **Repository Structure**

- **`audio_files/`**: Contains the original and filtered audio files.
  - `original_audio.wav`: The original audio signal.
  - `low_pass_filtered.wav`: The audio signal after applying the low-pass filter.
  - `high_pass_filtered.wav`: The audio signal after applying the high-pass filter.
  - `both_filters_applied.wav`: The audio signal after applying both filters.

- **`matlab_scripts/`**: Contains MATLAB scripts for each step of the project.
  - `record_audio.m`: Script to record and save the audio.
  - `low_pass_filter.m`: Script to design and apply the low-pass filter.
  - `high_pass_filter.m`: Script to design and apply the high-pass filter.
  - `fourier_transform.m`: Script to compute and visualize the Fourier Transform.
  - `apply_filters_frequency_domain.m`: Script to apply filters in the frequency domain.

- **`plots/`**: Contains visualizations of the signals in both time and frequency domains.
  - `original_signal.png`: Time-domain plot of the original signal.
  - `low_pass_filtered_signal.png`: Time-domain plot of the low-pass filtered signal.
  - `high_pass_filtered_signal.png`: Time-domain plot of the high-pass filtered signal.
  - `both_filters_applied_signal.png`: Time-domain plot of the signal after applying both filters.
  - `original_fft.png`: Frequency-domain plot of the original signal.
  - `low_pass_filtered_fft.png`: Frequency-domain plot of the low-pass filtered signal.
  - `high_pass_filtered_fft.png`: Frequency-domain plot of the high-pass filtered signal.

---

## **How to Run the Code**

1. **Record Audio**: Run `record_audio.m` to record your voice and save it as `original_audio.wav`.
2. **Apply Filters**: Run `low_pass_filter.m` and `high_pass_filter.m` to apply the respective filters and save the filtered signals.
3. **Fourier Transform**: Run `fourier_transform.m` to compute and visualize the Fourier Transform of the original signal.
4. **Filter in Frequency Domain**: Run `apply_filters_frequency_domain.m` to apply filters in the frequency domain and observe the changes.

---

## **Results**

### **Time-Domain Plots**

- **Original Signal**:
  ![Original Signal](plots/original_signal.png)

- **Low-Pass Filtered Signal**:
  ![Low-Pass Filtered Signal](plots/low_pass_filtered_signal.png)

- **High-Pass Filtered Signal**:
  ![High-Pass Filtered Signal](plots/high_pass_filtered_signal.png)

- **Both Filters Applied**:
  ![Both Filters Applied](plots/both_filters_applied_signal.png)

### **Frequency-Domain Plots (FFT)**

- **Original Signal FFT**:
  ![Original FFT](plots/original_fft.png)

- **Low-Pass Filtered FFT**:
  ![Low-Pass Filtered FFT](plots/low_pass_filtered_fft.png)

- **High-Pass Filtered FFT**:
  ![High-Pass Filtered FFT](plots/high_pass_filtered_fft.png)

---

### **Observations**

- **Low-Pass Filter**: The low-pass filter attenuates high-frequency components, preserving only the frequencies below **1000 Hz**.
- **High-Pass Filter**: The high-pass filter attenuates low-frequency components, preserving only the frequencies above **1000 Hz**.
- **Combined Filtering**: Applying both filters sequentially results in a signal that retains only the mid-range frequencies.

---

## **Applications**

- **Low-Pass Filter**: Useful for removing high-frequency noise (e.g., in speech or music).
- **High-Pass Filter**: Useful for enhancing high-frequency components (e.g., for clearer speech).

---

## **References**

- Oppenheim, A. V., & Schafer, R. W. (2010). *Discrete-Time Signal Processing*. Pearson.
- MATLAB Documentation: [https://www.mathworks.com/help/matlab/](https://www.mathworks.com/help/matlab/)

---

### **How to Add Images and Audio Files to GitHub**

1. **Save Your Plots**: After generating the plots in MATLAB, save them as `.png` files in the `plots/` folder.
2. **Save Your Audio Files**: Save the filtered audio files (e.g., `low_pass_filtered.wav`) in the `audio_files/` folder.
3. **Upload to GitHub**: Push the `plots/` and `audio_files/` folders along with their contents to your GitHub repository.
4. **Link in README**: Use the following Markdown syntax to embed images and link audio files:
   ```markdown
   ![Description](path/to/image.png)
   [Audio File](path/to/audio.wav)
