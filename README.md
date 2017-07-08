# Brain-Computer-Interface-BCI-
E-Club iitk summer'17 project

We try to guess the mental process going on in the subject's brain. The following processes can be identified currently(they are sh):
1. Relaxed State-Subject is relaxed and not thinking about anything in particular.
2. 3D geometric task-Subject is shown a 3D object for 30 seconds(approx.) and then asked to visualise and rotate it
3. Math Task- Subject is given a complex mathematical task e.g. multiplication of two 3-digit numbers
4. number counting and visualisation- subject is asked to imagine a black board with numbers being written and rubbed off constantly.


Requirements:
Emotiv EPOC headset
Emotiv EPOC SDK(both can be bought on Emotiv website)
pyemotiv repository (https://github.com/thearn/pyemotiv)
MATLAB

Method:
1) Emotiv Epoc headset setting:
The signal is acquired using a 14- Channel EEG- based signal acquisition device called Emotiv EPOC headset. After all the installations, the settings of the device can be altered through the EmotivControl Panel. It is made sure that all the 14 channels give full wirless signal power. To acquire perfect signals 0.9% of saline solution was used.
2)Data acquisition:

