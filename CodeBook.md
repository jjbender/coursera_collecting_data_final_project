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

### Resulted Measurements

A list of mean and standard deviation measurements:

 [1] "activity"                                                          
 [2] "subject"                                                           
 [3] "tBody_Accelerometer_-_Mean_-X"                                     
 [4] "tBody_Accelerometer_-_Mean_-Y"                                     
 [5] "tBody_Accelerometer_-_Mean_-Z"                                     
 [6] "tBody_Accelerometer_-std-X"                                        
 [7] "tBody_Accelerometer_-std-Y"                                        
 [8] "tBody_Accelerometer_-std-Z"                                        
 [9] "tGravity_Accelerometer_-_Mean_-X"                                  
[10] "tGravity_Accelerometer_-_Mean_-Y"                                  
[11] "tGravity_Accelerometer_-_Mean_-Z"                                  
[12] "tGravity_Accelerometer_-std-X"                                     
[13] "tGravity_Accelerometer_-std-Y"                                     
[14] "tGravity_Accelerometer_-std-Z"                                     
[15] "tBody_Accelerometer_Jerk-_Mean_-X"                                 
[16] "tBody_Accelerometer_Jerk-_Mean_-Y"                                 
[17] "tBody_Accelerometer_Jerk-_Mean_-Z"                                 
[18] "tBody_Accelerometer_Jerk-std-X"                                    
[19] "tBody_Accelerometer_Jerk-std-Y"                                    
[20] "tBody_Accelerometer_Jerk-std-Z"                                    
[21] "tBody_Gyroscope_-_Mean_-X"                                         
[22] "tBody_Gyroscope_-_Mean_-Y"                                         
[23] "tBody_Gyroscope_-_Mean_-Z"                                         
[24] "tBody_Gyroscope_-std-X"                                            
[25] "tBody_Gyroscope_-std-Y"                                            
[26] "tBody_Gyroscope_-std-Z"                                            
[27] "tBody_AngularAcceleration-_Mean_-X"                                
[28] "tBody_AngularAcceleration-_Mean_-Y"                                
[29] "tBody_AngularAcceleration-_Mean_-Z"                                
[30] "tBody_AngularAcceleration-std-X"                                   
[31] "tBody_AngularAcceleration-std-Y"                                   
[32] "tBody_AngularAcceleration-std-Z"                                   
[33] "tBody_Accelerometer_Magnitude_-_Mean_"                             
[34] "tBody_Accelerometer_Magnitude_-std"                                
[35] "tGravity_Accelerometer_Magnitude_-_Mean_"                          
[36] "tGravity_Accelerometer_Magnitude_-std"                             
[37] "tBody_Accelerometer_Jerk_Magnitude_-_Mean_"                        
[38] "tBody_Accelerometer_Jerk_Magnitude_-std"                           
[39] "tBody_Gyroscope_Magnitude_-_Mean_"                                 
[40] "tBody_Gyroscope_Magnitude_-std"                                    
[41] "tBody_AngularAcceleration_Magnitude_-_Mean_"                       
[42] "tBody_AngularAcceleration_Magnitude_-std"                          
[43] "FrequencyDomain_Body_Accelerometer_-_Mean_-X"                      
[44] "FrequencyDomain_Body_Accelerometer_-_Mean_-Y"                      
[45] "FrequencyDomain_Body_Accelerometer_-_Mean_-Z"                      
[46] "FrequencyDomain_Body_Accelerometer_-std-X"                         
[47] "FrequencyDomain_Body_Accelerometer_-std-Y"                         
[48] "FrequencyDomain_Body_Accelerometer_-std-Z"                         
[49] "FrequencyDomain_Body_Accelerometer_-_Mean_Freq-X"                  
[50] "FrequencyDomain_Body_Accelerometer_-_Mean_Freq-Y"                  
[51] "FrequencyDomain_Body_Accelerometer_-_Mean_Freq-Z"                  
[52] "FrequencyDomain_Body_Accelerometer_Jerk-_Mean_-X"                  
[53] "FrequencyDomain_Body_Accelerometer_Jerk-_Mean_-Y"                  
[54] "FrequencyDomain_Body_Accelerometer_Jerk-_Mean_-Z"                  
[55] "FrequencyDomain_Body_Accelerometer_Jerk-std-X"                     
[56] "FrequencyDomain_Body_Accelerometer_Jerk-std-Y"                     
[57] "FrequencyDomain_Body_Accelerometer_Jerk-std-Z"                     
[58] "FrequencyDomain_Body_Accelerometer_Jerk-_Mean_Freq-X"              
[59] "FrequencyDomain_Body_Accelerometer_Jerk-_Mean_Freq-Y"              
[60] "FrequencyDomain_Body_Accelerometer_Jerk-_Mean_Freq-Z"              
[61] "FrequencyDomain_Body_Gyroscope_-_Mean_-X"                          
[62] "FrequencyDomain_Body_Gyroscope_-_Mean_-Y"                          
[63] "FrequencyDomain_Body_Gyroscope_-_Mean_-Z"                          
[64] "FrequencyDomain_Body_Gyroscope_-std-X"                             
[65] "FrequencyDomain_Body_Gyroscope_-std-Y"                             
[66] "FrequencyDomain_Body_Gyroscope_-std-Z"                             
[67] "FrequencyDomain_Body_Gyroscope_-_Mean_Freq-X"                      
[68] "FrequencyDomain_Body_Gyroscope_-_Mean_Freq-Y"                      
[69] "FrequencyDomain_Body_Gyroscope_-_Mean_Freq-Z"                      
[70] "FrequencyDomain_Body_Accelerometer_Magnitude_-_Mean_"              
[71] "FrequencyDomain_Body_Accelerometer_Magnitude_-std"                 
[72] "FrequencyDomain_Body_Accelerometer_Magnitude_-_Mean_Freq"          
[73] "FrequencyDomain_BodyBody_Accelerometer_Jerk_Magnitude_-_Mean_"     
[74] "FrequencyDomain_BodyBody_Accelerometer_Jerk_Magnitude_-std"        
[75] "FrequencyDomain_BodyBody_Accelerometer_Jerk_Magnitude_-_Mean_Freq" 
[76] "FrequencyDomain_BodyBody_Gyroscope_Magnitude_-_Mean_"              
[77] "FrequencyDomain_BodyBody_Gyroscope_Magnitude_-std"                 
[78] "FrequencyDomain_BodyBody_Gyroscope_Magnitude_-_Mean_Freq"          
[79] "FrequencyDomain_BodyBody_AngularAcceleration_Magnitude_-_Mean_"    
[80] "FrequencyDomain_BodyBody_AngularAcceleration_Magnitude_-std"       
[81] "FrequencyDomain_BodyBody_AngularAcceleration_Magnitude_-_Mean_Freq" 

Note: features are normalized and bounded within [-1,1].
