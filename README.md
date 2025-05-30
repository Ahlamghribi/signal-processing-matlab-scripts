# Signal Processing MATLAB Scripts

A comprehensive collection of MATLAB scripts for digital signal processing, filter design, and signal analysis. This repository provides practical implementations of fundamental signal processing concepts including signal generation, filtering, and frequency domain analysis.

## 🚀 Features

### Signal Generation
- **Delta Functions**: Generate and visualize Dirac impulses with time delays
- **Step Functions**: Create unit step functions and shifted versions
- **Gate Functions**: Implement rectangular pulse (gate) functions
- **Periodic Signals**: Generate sinusoidal, square, sawtooth, triangular, and sinc signals
- **Custom Waveforms**: Support for various signal types with configurable parameters

### Filter Design & Analysis
- **Butterworth Filters**: Design and analyze low-pass Butterworth filters
- **Filter Synthesis**: Automated filter order calculation based on specifications
- **Frequency Response**: Visualize magnitude and phase responses
- **Signal Filtering**: Apply designed filters to test signals

### Frequency Domain Analysis
- **Fast Fourier Transform (FFT)**: Compute and visualize signal spectra
- **Inverse FFT**: Reconstruct signals from frequency domain
- **Spectral Analysis**: Analyze frequency content of various signals
- **Filter Performance**: Evaluate filter effectiveness through spectral comparison

## 📁 File Structure

### Signal Generation Scripts
- `delta1.m` - Basic Dirac delta function
- `delta2.m` - Time-delayed Dirac delta function
- `echelon.m` - Unit step function
- `echelon1.m` - Shifted unit step function
- `porte.m` - Rectangular gate function
- `sig_sin.m` - Sinusoidal signal generation
- `sig_square.m` - Square wave generation
- `sig_sawtooth.m` - Sawtooth wave generation
- `sig_triangle.m` - Triangular wave generation
- `sig_sinc.m` - Sinc function generation

### Filter Design Scripts
- `calcul_ordre_filtre.m` - Filter order calculation
- `conception_filtre.m` - Filter design implementation
- `attenuation.m` - Attenuation analysis
- `filtrage_signal_test.m` - Signal filtering demonstration

### Frequency Analysis Scripts
- `fft_porte_largeur2.m` - FFT analysis of gate functions
- `porte_largeur1.m` - Gate function (width = 1)
- `porte_largeur2.m` - Gate function (width = 2)
- `ifft_porte.m` - Inverse FFT demonstration
- `spectre_signal_test.m` - Signal spectrum analysis
- `spectre_signal_filtré.m` - Filtered signal spectrum analysis

### Test & Demo Scripts
- `signal_test.m` - General signal testing
- `signal_double_cosinus.m` - Dual-frequency cosine signals

## 🛠️ Requirements

- MATLAB R2018b or later
- Signal Processing Toolbox (recommended)
- Basic understanding of signal processing concepts

## 🚀 Quick Start

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Ahlamghribi/signal-processing-matlab-scripts.git
   cd signal-processing-matlab-scripts
   ```

2. **Open MATLAB and navigate to the project directory**

3. **Run individual scripts:**
   ```matlab
   % Generate a Dirac delta function
   run('delta1.m')
   
   % Create a sinusoidal signal
   run('sig_sin.m')
   
   % Design a Butterworth filter
   run('conception_filtre.m')
   ```

## 📊 Usage Examples

### Basic Signal Generation
```matlab
% Generate a sinusoidal signal
fe = 1000;                    % Sampling frequency
t = -10:1/fe:10;             % Time vector
f0 = 100;                    % Signal frequency
x = sin(2*pi*f0*t);          % Sinusoidal signal
```

### Filter Design
```matlab
% Design a low-pass Butterworth filter
fa = 200;                    % Passband frequency (Hz)
fc = 350;                    % Stopband frequency (Hz)
wa = 2*pi*fa;               % Convert to rad/s
wc = 2*pi*fc;               % Convert to rad/s
ra = 2;                     % Passband ripple (dB)
rc = 40;                    % Stopband attenuation (dB)

[n, wn] = buttord(wa, wc, ra, rc, 's');  % Calculate filter order
[b, a] = butter(n, wn, 's');             % Design filter
```

### Frequency Analysis
```matlab
% Compute and plot FFT
X = fft(x);                  % Compute FFT
f = linspace(0, fe, length(x)); % Frequency vector
magnitude = abs(X);          % Magnitude spectrum
plot(f, magnitude);          % Plot spectrum
```

## 🔧 Customization

Most scripts include configurable parameters at the beginning:

- **Sampling frequency** (`fe` or `Fe`)
- **Signal frequencies** (`f0`, `f1`, `f2`)
- **Time duration** and **resolution**
- **Filter specifications** (cutoff frequencies, attenuation levels)

Modify these parameters to suit your specific requirements.

## 📈 Visualization

All scripts generate informative plots with:
- Proper axis labels and titles
- Grid lines for better readability
- Multiple subplots for comparison
- Time and frequency domain representations

## 🎯 Applications

These scripts are useful for:
- **Educational purposes**: Learning signal processing concepts
- **Research projects**: Rapid prototyping of signal processing algorithms
- **Engineering applications**: Filter design and signal analysis
- **Academic work**: Demonstrating theoretical concepts practically
---

**Happy Signal Processing!** 🎵📊
