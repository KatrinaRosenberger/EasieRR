Read Me
1.	About EasieRR 
EasieRR is an open-access software developed to assist researchers in the use of heart rate parameters and their processing and analysis. Special emphasis was put on an intuitive graphical user interface (GUI) to ease manual detection and correction of artefacts as well as a lean program structure in order to make HRV analysis as easy as possible.
2.	Features

2.1.	Main features
•	Open access software
•	Intuitive GUI
•	Automated and manual peak detection for inter beat interval extraction in ECG data
•	Easy artifact detection by means of tachogram and Poincaré plots
•	Manual artifact processing in ECG data
•	Analysis in time-domain and non-linear domain


2.2.	Customized analysis for different species
•	Allows to set sample frequency
•	Allows to set refractory time
•	Analyses raw ECG data in txt format and csv format
•	Allows to use default settings for small ruminants and pigs or customize settings
 

2.3.	Detection of peaks in ECG data and extraction of inter beat intervals
•	Allows for customized filtering of data (high and low pass)
•	Detects R-peaks automatically utilizing a peak prominence algorithm
•	Offers two options for peak detection: positive peaks and negative peaks
 

2.4.	Detection and processing of artifacts 
•	Allows for manual correction of artifacts: selection of data-points, deletion of mis-detected data points and insertion of data points
•	Instantaneous display of corrected signal in tachogram
•	Visualization of data points in Poincaré plot to facilitate detection of artifacts
 

2.5.	Analysis of heart rate variability (HRV) estimates in time and frequency domain
•	Computes HRV estimates in time and non-linear domain
•	Displays HRV statistics and Poincaré plots as soon as data sequences are selected
•	Allows selection and subsequent analysis and storage of several sequences in a row
 

2.6.	Storage of analysis and HRV statistics
•	Stores summary of HRV estimates of analysed sequences to the disk
•	Stores Poincaré plots and RR time probability histogram to disk
•	Allows re-loading of previously analysed data
 

2.7.	Synchronization with behavioural data
•	Offers the possibility to choose synchronization option when data is imported
•	Facilitates comparison of ECG data with behavioural data from videos

3.	Computational background 
EasieRR is a MATLAB based (Mathworks, Natick, MA, USA) software and has been compiled in…..?. The software is available for Microsoft Windows only, as a stand-alone application.
Filter
EasieRR applies by default a band pass filter (4. Order 0 degree filter at a lower frequency of 1 Hz and higher frequency of 20 Hz), hence removing high frequency peaks in the signal as well as removing any DC offset. Default settings can be easily customized and adapted for every species.
Peak detection
The peak detection used for heart cycle determination and inter beat interval extraction in EasieRR is based on a peak prominence algorithm: The height of the potential peak to be detected must be at least a certain user-determined value (default: 0.55) times the width of the peak at half the max.  height. Combined with the band pass filter and a predetermined minimum timespan (default: 300ms) between inter beat intervals (=heart refractory time of the species used), this method allows for robust peak detection.
Artefact correction
Artefact correction in EasieRR is based on a deletion algorithm proposed by Lippmann and colleagues (1994). This method has been shown to be best suited for analysis in the time-domain and whenever short sequences of ECG recordings have to be analysed. EasieRR also offers the possibility to manually correct artefacts by selecting missed peaks or deselecting wrongly detected peaks.

4.	Graphical user interface
Overview
The GUI is split into three separate interactive windows: an upper window displaying the ECG signal (1) which allows to visually inspect QRS complexes and to correct artefacts. The lower left window shows the corresponding tachogram (2) and the lower right window a Poincaré plot (3) facilitating the efficient location of artefacts. 
 

EasieRR Buttons: Description and Function
The EasieRR GUI is operated via a range of buttons varying in colour. Descriptions as well as function of every single button can be found in the table below. Colours in the table match the button colours in the GUI.
Button Description	Button Function
Choose data range	Selects the data range to be analysed
Move peak	Moves selected data point from one location to another 
Undo last move	Reverses the last movement 
Insert peak	Inserts new selection of a data point
Undo insertion	Reverses last insertion 
Mark outlier	Marks a data point as an outlier to be deleted
Undo last outlier	Reverses last deletion
Recalculate	Recalculated HRV estimates after artefact correction or new selection of data range
Reset all	Resets all artefact corrections within the current selection
Save range	Saves currently selected data range and HRV estimates into check data box
Undo range	Reverses last selection of data range
Save to File	Saves data from all previously saved sequences  to a file
Load data	Loads ECG data in txt format
Print Poincaré	Reloads previously analysed poincaré plots and histogram 
Reset and recalculate	Resets everything to the starting point
Check data	Displays data of all previously saved data ranges
Change peak	Switches between positive and negative peak cycle detection
Separate figure	Opens Poincaré plot as separate figure 
Zoom in/out tool	Zooms in/out of ECG and tachogram
Hand tool	Moves displayed section of ECG and tachogram
Sync box	Asks for xls file to synchronize with ECG txt file when ticked
Fixed range box	Uses alwys the same length of time range when ticked

5.	Workflow: 

ECG analysis

1.	Start EasieRR and a dialogue box will pop up.
2.	Set the sampling frequency, refractory time, peak prominence for peak detection, frequency for low cut-off and high cut-off filter or use default settings.
3.	Load a new data file (txt or csv format) or a previously analysed file
4.	Select data range(s) to be analysed
5.	Examine data by means of ECG, tachogram and poincaré plot
6.	Correct data by inserting, moving or deleting artefacts in the ECG window
•	to insert a new selection: press ‘insert peak’ button and mark the new location on the ECG signal
•	to move selected peak: press the ‘move peak’ button and mark 1) wrongly detected peak location, 2) correct peak location (within two intervals of the signal)
•	to delete artefact: press ‘mark outlier’ and mark outlier
7.	Save every data range individually after correction is finished and view HRV statistics using the ‘check data’ button.
8.	Proceed to next data range and repeat steps 4-7
9.	Save all previously analysed data ranges using the ‘save to file’ button. Results will be saved in txt and mat format.
10.	 To view analysed data at a later point use the ‘reload data’ button and choose the mat file which contains all relevant data for plotting the analysed data ranges and Poincaré plots.

Synchronization with behavioural data
HRV data can also be synchronized with behavior via import into common software for behavioral video analysis (i.e. The Observer®), if video and ECG recording have not been synchronized before analysis.
1.	Prepare an additional file in xls format arranged as follows: 
•	First column: exact filename used for the ECG txt files. 
•	Second column: latency (s) from ECG data start
•	Third column: latency (s) from video start until observation start
2.	Open EasieRR and tick ‘Sync’ box before loading a new data file.
3.	Proceed with steps 2-7 (described in the workflow for ECG analysis above)
