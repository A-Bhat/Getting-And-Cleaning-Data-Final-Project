# Getting And Cleaning Data Project: CodeBook 


## Data

The `tidy_data.txt` data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described below, and the rows contain the values of these variables. 

## Variables


### Identifiers

- `Subject`
  
  Subject identifier, integer, ranges from 1 to 30.

- `Activity`

	Activity identifier, string with 6 possible values: 
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying

### Average Of Measurements

All measurements are floating-point values, normalised and bounded within [-1,1].

Prior to normalisation, acceleration measurements (variables containing `Accelerometer`) were made in *g*'s (9.81 m.s⁻²) and gyroscope measurements (variables containing `Gyroscope`) were made in radians per second (rad.s⁻¹).

Magnitudes of three-dimensional signals (variables containing `Magnitude`) were calculated using the Euclidean norm.

The measurements are classified in two domains:

- Time-domain signals (variables prefixed by `timeDomain`), resulting from the capture of accelerometer and gyroscope raw signals.

- Frequency-domain signals (variables prefixed by `frequencyDomain`), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

#### Time-domain signals

- Average time-domain body acceleration in the X, Y and Z directions:

	- `tBodyAcc-Mean-X`
	- `tBodyAcc-Mean-Y`
	- `tBodyAcc-Mean-Z`

- Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

	- `tBodyAcc-SD-X`
	- `tBodyAcc-SD-Y`
	- `tBodyAcc-SD-Z`

- Average time-domain gravity acceleration in the X, Y and Z directions:

	- `tGravityAcc-Mean-X`
	- `tGravityAcc-Mean-Y`
	- `tGravityAcc-Mean-Z`

- Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

	- `tGravityAcc-SD-X`
	- `tGravityAcc-SD-Y`
	- `tGravityAcc-SD-Z`

- Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `tBodyAccJerk-Mean-X`
	- `tBodyAccJerk-Mean-Y`
	- `tBodyAccJerk-Mean-Z`

- Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

  - `tBodyAccJerk-SD-X`
  - `tBodyAccJerk-SD-Y`
  - `tBodyAccJerk-SD-Z`

- Average time-domain body angular velocity in the X, Y and Z directions:

	- `tBodyGyro-Mean-X`
	- `tBodyGyro-Mean-Y`
	- `tBodyGyro-Mean-Z`

- Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

	- `tBodyGyro-SD-X`
	- `tBodyGyro-SD-Y`
	- `tBodyGyro-SD-Z`

- Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `tBodyGyroJerk-Mean-X`
	- `tBodyGyroJerk-Mean-Y`
	- `tBodyGyroJerk-Mean-Z`

- Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `tBodyGyroJerk-SD-X`
	- `tBodyGyroJerk-SD-Y`
	- `tBodyGyroJerk-SD-Z`

- Average and standard deviation of the time-domain magnitude of body acceleration:

	- `tBodyAccMag-Mean`
	- `tBodyAccMag-SD`

- Average and standard deviation of the time-domain magnitude of gravity acceleration:

	- `tGravityAccMag-Mean`
	- `tGravityAccMag-SD`

- Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `tBodyAccJerkMag-Mean`
	- `tBodyAccJerkMag-SD`

- Average and standard deviation of the time-domain magnitude of body angular velocity:

	- `tBodyGyroMag-Mean`
	- `tBodyGyroMag-SD`

- Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `tBodyGyroJerkMag-Mean`
	- `tBodyGyroJerkMag-SD`
  
  #### Frequency-domain signals

- Average frequency-domain body acceleration in the X, Y and Z directions:

	- `fBodyAcc-Mean-X`
	- `fBodyAcc-Mean-Y`
	- `fBodyAcc-Mean-Z`

- Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

	- `fBodyAcc-SD-X`
	- `fBodyAcc-SD-Y`
	- `fBodyAcc-SD-Z`

- Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

	- `fBodyAcc-MeanFreq-X`
	- `fBodyAcc-MeanFreq-Y`
	- `fBodyAcc-MeanFreq-Z`

- Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `fBodyAccJerk-Mean-X`
	- `fBodyAccJerk-Mean-Y`
	- `fBodyAccJerk-Mean-Z`

- Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `fBodyAccJerk-SD-X`
	- `fBodyAccJerk-SD-Y`
	- `fBodyAccJerk-SD-Z`

- Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `fBodyAccJerk-MeanFreq-X`
	- `fBodyAccJerk-MeanFreq-Y`
	- `fBodyAccJerk-MeanFreq-Z`

- Average frequency-domain body angular velocity in the X, Y and Z directions:

	- `fBodyGyro-Mean-X`
	- `fBodyGyro-Mean-Y`
	- `fBodyGyro-Mean-Z`

- Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `fBodyGyro-SD-X`
	- `fBodyGyro-SD-Y`
	- `fBodyGyro-SD-Z`

- Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `fBodyGyro-MeanFreq-X`
	- `fBodyGyro-MeanFreq-Y`
	- `fBodyGyro-MeanFreq-Z`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

	- `fBodyAccMag-Mean`
	- `fBodyAccMag-SD`
	- `fBodyAccMag-MeanFreq`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `fBodyBodyAccJerkMag-Mean`
	- `fBodyBodyAccJerkMag-SD`
	- `fBodyBodyAccJerkMag-MeanFreq`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

	- `fBodyBodyGyroMag-Mean`
	- `fBodyBodyGyroMag-SD`
	- `fBodyBodyGyroMag-MeanFreq`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `fBodyBodyGyroJerkMag-Mean`
	- `fBodyBodyGyroJerkMag-SD`
	- `fBodyBodyGyroJerkMag-MeanFreq`

## Transformations

- A logical vector named `features_reqd` is created which gives the position of variables with 'either mean or standard deviation as a substring in their names'.

- The following operations were performed on the training data:

    - The training data(i.e. `X_train.txt`) is read and column subsetting is carried out with `features_reqd` vector. 
    - The data related to the training subjects(i.e. `Subject_train.txt`) and the activities(i.e. `y_train.txt`) were read.
    - All the three components of training data are merged using `cbind()` and stored in `train_df`

- Similar operations were performed on the test data and the final dataset was names as `test_df`.

- `train_df` and `test_df` were merged using `rbind()` and the resulting dataset was named as `train_test`.

- The column names of `train_test` dataset were changed using `grep()`, `gsub()` and `colnames()` functions. 

- The labels in the `Activities` column were replaced by the activity names. The `factor()` function was used for the same.

- Finally, the `train_test` dataset was grouped by the `Subject` and `Activity` column respectively using `group_by()` function.
Then the mean was calculated for each variable using the `summarise_all()` function. The resulting dataset was named as `tidy_data`.
