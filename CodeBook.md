# Getting and Cleaning Data Project
Author: Nikolay Tretyakov
## CodeBook Description

CodeBook describes the information 


## Source Data

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data for the project could be downloaded from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Raw Data Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
Variable named "subject" contains id of one of the 30 volunteers
Variable named "activity" contains one of six activity types: 
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

## Resulting dataset: tidy_data.txt

The tidy_data.txt is the resulting file from the script run_analysis.R. 

### Making data tidy

The raw data was transformed with following stages:

-  Training and test datasets are merged;
-  Only measures on the mean and standard deviation for each measure are extracted;
-  Label activities have the descriptive names;
-  Dataset has descriptive variable names

The dataset tidy_data.txt also satisfies the conditions of tidy data:

- The data is a collection of values of a given type
- Every value belongs to a variable
- Every variable belongs to an observation
- Observations are variables for a unit (like an object or an event).

### Changed Variables

File tidy_data.txt is a dataset which contains 180 raws and 81 columns. The set of variables that were estimated include:
*mean(): mean value
*std(): standard deviation

Dplyr package provides the following overview of this dataset:

activity   subject TimeDomain_Body_Ac~ TimeDomain_Body_A~ TimeDomain_Body_A~ TimeDomain_Body_Ac~
   <fct>      <fct>                 <dbl>              <dbl>              <dbl>               <dbl>
 1 WALKING    1                     0.277           -0.0174             -0.111              -0.284 
 2 WALKING_U~ 1                     0.255           -0.0240             -0.0973             -0.355 
 3 WALKING_D~ 1                     0.289           -0.00992            -0.108               0.0300
 4 SITTING    1                     0.261           -0.00131            -0.105              -0.977 
 5 STANDING   1                     0.279           -0.0161             -0.111              -0.996 
 6 LAYING     1                     0.222           -0.0405             -0.113              -0.928 
 7 WALKING    2                     0.276           -0.0186             -0.106              -0.424 
 8 WALKING_U~ 2                     0.247           -0.0214             -0.153              -0.304 
 9 WALKING_D~ 2                     0.278           -0.0227             -0.117               0.0464
10 SITTING    2                     0.277           -0.0157             -0.109              -0.987 
# ... with 170 more rows, and 75 more variables:
#   TimeDomain_Body_Accelerometer_StandardDeviation_Y <dbl>,
#   TimeDomain_Body_Accelerometer_StandardDeviation_Z <dbl>,
#   TimeDomain_Gravity_Accelerometer_Mean_X <dbl>, TimeDomain_Gravity_Accelerometer_Mean_Y <dbl>,
#   TimeDomain_Gravity_Accelerometer_Mean_Z <dbl>,
#   TimeDomain_Gravity_Accelerometer_StandardDeviation_X <dbl>,
#   TimeDomain_Gravity_Accelerometer_StandardDeviation_Y <dbl>,
#   TimeDomain_Gravity_Accelerometer_StandardDeviation_Z <dbl>,
#   TimeDomain_Body_Accelerometer_Jerk_Mean_X <dbl>,
#   TimeDomain_Body_Accelerometer_Jerk_Mean_Y <dbl>,
#   TimeDomain_Body_Accelerometer_Jerk_Mean_Z <dbl>,
#   TimeDomain_Body_Accelerometer_Jerk_StandardDeviation_X <dbl>,
#   TimeDomain_Body_Accelerometer_Jerk_StandardDeviation_Y <dbl>,
#   TimeDomain_Body_Accelerometer_Jerk_StandardDeviation_Z <dbl>,
#   TimeDomain_Body_Gyroscope_Mean_X <dbl>, TimeDomain_Body_Gyroscope_Mean_Y <dbl>,
#   TimeDomain_Body_Gyroscope_Mean_Z <dbl>, TimeDomain_Body_Gyroscope_StandardDeviation_X <dbl>,
#   TimeDomain_Body_Gyroscope_StandardDeviation_Y <dbl>,
#   TimeDomain_Body_Gyroscope_StandardDeviation_Z <dbl>,
#   TimeDomain_Body_AngularAcceleration_Mean_X <dbl>,
#   TimeDomain_Body_AngularAcceleration_Mean_Y <dbl>,
#   TimeDomain_Body_AngularAcceleration_Mean_Z <dbl>,
#   TimeDomain_Body_AngularAcceleration_StandardDeviation_X <dbl>,
#   TimeDomain_Body_AngularAcceleration_StandardDeviation_Y <dbl>,
#   TimeDomain_Body_AngularAcceleration_StandardDeviation_Z <dbl>,
#   TimeDomain_Body_Accelerometer_Magnitude_Mean <dbl>,
#   TimeDomain_Body_Accelerometer_Magnitude_StandardDeviation <dbl>,
#   TimeDomain_Gravity_Accelerometer_Magnitude_Mean <dbl>,
#   TimeDomain_Gravity_Accelerometer_Magnitude_StandardDeviation <dbl>,
#   TimeDomain_Body_Accelerometer_Jerk_Magnitude_Mean <dbl>,
#   TimeDomain_Body_Accelerometer_Jerk_Magnitude_StandardDeviation <dbl>,
#   TimeDomain_Body_Gyroscope_Magnitude_Mean <dbl>,
#   TimeDomain_Body_Gyroscope_Magnitude_StandardDeviation <dbl>,
#   TimeDomain_Body_AngularAcceleration_Magnitude_Mean <dbl>,
#   TimeDomain_Body_AngularAcceleration_Magnitude_StandardDeviation <dbl>,
#   FrequencyDomain_Body_Accelerometer_Mean_X <dbl>,
#   FrequencyDomain_Body_Accelerometer_Mean_Y <dbl>,
#   FrequencyDomain_Body_Accelerometer_Mean_Z <dbl>,
#   FrequencyDomain_Body_Accelerometer_StandardDeviation_X <dbl>,
#   FrequencyDomain_Body_Accelerometer_StandardDeviation_Y <dbl>,
#   FrequencyDomain_Body_Accelerometer_StandardDeviation_Z <dbl>,
#   FrequencyDomain_Body_Accelerometer_Mean_Freq_X <dbl>,
#   FrequencyDomain_Body_Accelerometer_Mean_Freq_Y <dbl>,
#   FrequencyDomain_Body_Accelerometer_Mean_Freq_Z <dbl>,
#   FrequencyDomain_Body_Accelerometer_Jerk_Mean_X <dbl>,
#   FrequencyDomain_Body_Accelerometer_Jerk_Mean_Y <dbl>,
#   FrequencyDomain_Body_Accelerometer_Jerk_Mean_Z <dbl>,
#   FrequencyDomain_Body_Accelerometer_Jerk_StandardDeviation_X <dbl>,
#   FrequencyDomain_Body_Accelerometer_Jerk_StandardDeviation_Y <dbl>,
#   FrequencyDomain_Body_Accelerometer_Jerk_StandardDeviation_Z <dbl>,
#   FrequencyDomain_Body_Accelerometer_Jerk_Mean_Freq_X <dbl>,
#   FrequencyDomain_Body_Accelerometer_Jerk_Mean_Freq_Y <dbl>,
#   FrequencyDomain_Body_Accelerometer_Jerk_Mean_Freq_Z <dbl>,
#   FrequencyDomain_Body_Gyroscope_Mean_X <dbl>, FrequencyDomain_Body_Gyroscope_Mean_Y <dbl>,
#   FrequencyDomain_Body_Gyroscope_Mean_Z <dbl>,
#   FrequencyDomain_Body_Gyroscope_StandardDeviation_X <dbl>,
#   FrequencyDomain_Body_Gyroscope_StandardDeviation_Y <dbl>,
#   FrequencyDomain_Body_Gyroscope_StandardDeviation_Z <dbl>,
#   FrequencyDomain_Body_Gyroscope_Mean_Freq_X <dbl>,
#   FrequencyDomain_Body_Gyroscope_Mean_Freq_Y <dbl>,
#   FrequencyDomain_Body_Gyroscope_Mean_Freq_Z <dbl>,
#   FrequencyDomain_Body_Accelerometer_Magnitude_Mean <dbl>,
#   FrequencyDomain_Body_Accelerometer_Magnitude_StandardDeviation <dbl>,
#   FrequencyDomain_Body_Accelerometer_Magnitude_Mean_Frequency <dbl>,
#   FrequencyDomain_BodyBody_Accelerometer_Jerk_Magnitude_Mean <dbl>,
#   FrequencyDomain_BodyBody_Accelerometer_Jerk_Magnitude_StandardDeviation <dbl>,
#   FrequencyDomain_BodyBody_Accelerometer_Jerk_Magnitude_Mean_Frequency <dbl>,
#   FrequencyDomain_BodyBody_Gyroscope_Magnitude_Mean <dbl>,
#   FrequencyDomain_BodyBody_Gyroscope_Magnitude_StandardDeviation <dbl>,
#   FrequencyDomain_BodyBody_Gyroscope_Magnitude_Mean_Frequency <dbl>,
#   FrequencyDomain_BodyBody_AngularAcceleration_Magnitude_Mean <dbl>,
#   FrequencyDomain_BodyBody_AngularAcceleration_Magnitude_StandardDeviation <dbl>,
#   FrequencyDomain_BodyBody_AngularAcceleration_Magnitude_Mean_Frequency <dbl>

Note: features are normalized and bounded within [-1,1]. 

