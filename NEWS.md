---
# erp.easy 1.1.0
### February 21st, 2017
---

## New Functions
### easy.load:
* A more user-friendly way to import your data. Just
    answer a few questions and the function generates 
	a ready to copy/paste line of code.

## Updates and Fixes to Previously Existing Functions
### load.data:
* Option to perform baseline correction on data
	as it is loaded
* Labels data using specified subject values instead 
    of generic numbers

### grandaverage:
* Option to suppress the legend (for cases where it covers
    part of the waveform)
* Indicates the electrodes used to create the plot

### p.measures:
* Option to search for the most negative, positive
    or absolute peak value. Previously only absolute value was
	allowed (i.e., greatest deviation from 0 regardless of polarity).
	Option to use simple or local peak measures.
* Existing scripts using p.measures will have to be updated by 
    adding the "pol" argument with an acceptable parameter

### individual:
* Returns the individual average data for each subject
	in each condition
* Option to create separate plots for each individual by 
    setting plots="y". By default, no plots are returned (i.e., 
    only raw data values are returned)

### erp.filter
* This function has been removed.


---
# erp.easy 1.0.0
### January 29th, 2016
---

## New Functions
### erp.filter:
* Uses the "signal" package to allow Butterworth  
	filterting of erp.easy data objects

## Updates and Fixes to Previously Existing Functions
### all plotting functions:
* There is now a solid background for all plot legends

### dif.wave:
* Can now specify Stimulus name for difference wave
* More descriptive default for Stimulus name for
	difference wave, if none is specified
* Can now specify which data frame to keep with the
	difference wave (if any)

### grandaverage:
* Raw amplitude data for the grand average is returned
    for each condition

### load.data:
* Change in acceptable file name format means files no longer 
	need to be numbered.  Now all text preceding an "_" will be
	ignored, and all text following an "_" will be read as
	the specified condition.  This allows removing or adding
	subject files without having to renumber existing files.  

### m.measures: 
* Mean erp measures are automatically returned with a plot 
	of the grand average and time window

### p.measures:
* Peak erp measures are automatically returned with: 
	+ a plot of the grand average
	+ the time window
	+ a vertical line indicating the peak latency
* Fixed a bug that produced inaccurate local peak measures for 
	individual data (grand average peak data were accurate)

	
---
# erp.easy 0.6.4
### September, 2015
---
## Initial Release