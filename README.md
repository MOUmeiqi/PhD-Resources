# PhD-Resources
Source code repository for PhD on OCDM-aEITS

*** README ***

This repository (repo) contains the source code and some experimental results acquired during research of the thesis titled "Absolute Electrical Impedance Tomography and Spectroscopy - An Orthogonal Chirp Division Multiplexed (OCDM) Approach"
This thesis was authored by: Ezra Luke America and presented to the University of Cape Town for fulfilment of a Doctorate of Philosophy in Electrical Engineering.

The repo separated into four streams:
1) Source Codes
2) Misc. Experimental Results
3) Schematics
4) Misc. Images

*** Codes ***
The source codes components of the repo holds the source files that were used for the Arduino, MATLAB, uDAQ, and FPGA.
The code for the Arduino was used to control the system wide multiplexing.
The code for MATLAB was used to control the entire system and reconstruct images.
The code for the uDAQ_test_scripts were used to control a data acquisition card when initial tests were performed.
The code for the VHDL_CODE were used to control the ADC/DAC data acquisition board and FPGA.

*** Misc. Experimental Results ***
This folder contains 8 internal folders that hold a measurement frame for eight different positions of an anomaly.
To test this data, import the data to the MATLAB image_reconstruction code in the MATLAB folder.

*** Schematics ***
The schematics folder contains some system design schematics.

*** Misc. Images ***
This folder contains some reconstructed images using higher element FEM models.
