# Brain-Computer-Interface-BCI-
E-Club iitk summer'17 project

We try to guess the mental process going on in the subject's brain. The following processes can be identified currently(they are sh):
1. Relaxed State-Subject is relaxed and not thinking about anything in particular.
2. 3D geometric task-Subject is shown a 3D object for 30 seconds(approx.) and then asked to visualise and rotate it
3. Math Task- Subject is given a complex mathematical task e.g. multiplication of two 3-digit numbers
4. number counting and visualisation- subject is asked to imagine a black board with numbers being written and rubbed off constantly.


## Requirements:
Emotiv EPOC headset<br>
Emotiv EPOC SDK(both can be bought on Emotiv website)<br>
pyemotiv repository (https://github.com/thearn/pyemotiv)<br>
MATLAB<br>
Python 2.x(https://python.org)<br>

## Installation:
1. Download and copy the contents of this repository into your pyemotiv directory
2. Change the path of testepoc.PY in line no. - of onlineanalysis.m
3. You are good to go.

## Method:
### 1. Emotiv Epoc headset setting:
The signal is acquired using a 14- Channel EEG- based signal acquisition device called Emotiv EPOC headset. After all the installations, the settings of the device can be altered through the Emotiv Control Panel(keep Emotiv Control Panel open during the whole operation). It is made sure that all the 14 channels give full wirless signal power. To acquire perfect signals 0.9% of saline solution was used.<br>
### 2.Data acquisition:<br>
Pyemotiv acquires the data into a Comma-Separated-Values(.csp) file. The subject is asked to do any of the above mentioned task and the brain signals of the respective task is then acquired into a Comma-Separated-Values(.csp) file which is then loaded into MATLAB for further analysis.<br>
### 3. Filtering the data:<br>
### Filter Specifications:<br>
__6<sup>th</sup> order IIR Butterworth Highpass filter with f<sub>cutoff</sub>=5Hz__<br>
### 4.Feature Extraction<br>
The following features were used for data from each channel:<br>
* simple integral
* mean
* rms
* variance
* square integral
* number of slope sign change
* mean frequency
* median frequency
* __6<sup>th</sup> order Autoregression(AR) coefficients__
* __Waveform length__
* Band Power
