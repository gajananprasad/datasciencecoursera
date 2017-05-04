---
title: "CodeBook"
author: "Gajananprasad Arankalle"
date: "May 4, 2017"
output: html_document
---

 
## Data Dictionary – Human Activity Recognition Using Smartphones Dataset
 
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
## Below table provide details of output tidy data set variable names
 
<table>
<TR><TD>Position</TD><TD>Variable Name</TD><TD>Type</TD><TD>Description</TD></TR>
<TR><TD>1 </TD><TD>activityName</TD><TD>Character String</TD><TD>Activities performed by participants in experiment, including
<br>•    LAYING             
<br>•    SITTING            
<br>•    STANDING           
<br>•    WALKING           
<br>•    WALKING_DOWNSTAIRS 
<br>•    WALKING_UPSTAIRS
</TD></TR>
<TR><TD>2 </TD><TD>participantId</TD><TD>Numeric</TD><TD>A unique identifier of the participant or subject of the experiment. It included 30 participants so the values range between 1-30. No other information than Id is provided by study data.</TD></TR>
<TR><TD>3 </TD><TD>avgTimeBodyAccMean-X</TD><TD>Double</TD><TD>Average of time body acceleration mean in X dimension of the phone</TD></TR>
<TR><TD>4 </TD><TD>avgTimeBodyAccMean-Y</TD><TD>Double</TD><TD>Average of time body acceleration mean in Y dimension of the phone</TD></TR>
<TR><TD>5 </TD><TD>avgTimeBodyAccMean-Z</TD><TD>Double</TD><TD>Average of time body acceleration mean in Z dimension of the phone</TD></TR>
<TR><TD>6 </TD><TD>avgTimeBodyAccStdDev-X</TD><TD>Double</TD><TD>Average of time body acceleration Std Deviation in X dimension of the phone</TD></TR>
<TR><TD>7 </TD><TD>avgTimeBodyAccStdDev-Y</TD><TD>Double</TD><TD>Average of time body acceleration Std Deviation in Y dimension of the phone</TD></TR>
<TR><TD>8 </TD><TD>avgTimeBodyAccStdDev-Z</TD><TD>Double</TD><TD>Average of time body acceleration Std Deviation in Z dimension of the phone</TD></TR>
<TR><TD>9 </TD><TD>avgTimeGravityAccMean-X</TD><TD>Double</TD><TD>Average of time Gravity acceleration Mean in X dimension of the phone</TD></TR>
<TR><TD>10</TD><TD>avgTimeGravityAccMean-Y</TD><TD>Double</TD><TD>Average of time Gravity acceleration Mean in Y dimension of the phone</TD></TR>
<TR><TD>11</TD><TD>avgTimeGravityAccMean-Z</TD><TD>Double</TD><TD>Average of time Gravity acceleration Mean in Z dimension of the phone</TD></TR>
<TR><TD>12</TD><TD>avgTimeGravityAccStdDev-X</TD><TD>Double</TD><TD>Average of time Gravity acceleration Std Deviation in X dimension of the phone</TD></TR>
<TR><TD>13</TD><TD>avgTimeGravityAccStdDev-Y</TD><TD>Double</TD><TD>Average of time Gravity acceleration Std Deviation in Y dimension of the phone</TD></TR>
<TR><TD>14</TD><TD>avgTimeGravityAccStdDev-Z</TD><TD>Double</TD><TD>Average of time Gravity acceleration Std Deviation in Z dimension of the phone</TD></TR>
<TR><TD>15</TD><TD>avgTimeBodyAccJerkMean-X</TD><TD>Double</TD><TD>Average of time body acceleration Jerk Mean in X dimension of the phone</TD></TR>
<TR><TD>16</TD><TD>avgTimeBodyAccJerkMean-Y</TD><TD>Double</TD><TD>Average of time body acceleration Jerk Mean in Y dimension of the phone</TD></TR>
<TR><TD>17</TD><TD>avgTimeBodyAccJerkMean-Z</TD><TD>Double</TD><TD>Average of time body acceleration Jerk Mean in Z dimension of the phone</TD></TR>
<TR><TD>18</TD><TD>avgTimeBodyAccJerkStdDev-X</TD><TD>Double</TD><TD>Average of time body acceleration Jerk Std Deviation in X dimension of the phone</TD></TR>
<TR><TD>19</TD><TD>avgTimeBodyAccJerkStdDev-Y</TD><TD>Double</TD><TD>Average of time body acceleration Jerk Std Deviation in Y dimension of the phone</TD></TR>
<TR><TD>20</TD><TD>avgTimeBodyAccJerkStdDev-Z</TD><TD>Double</TD><TD>Average of time body acceleration Jerk Std Deviation in Z dimension of the phone</TD></TR>
<TR><TD>21</TD><TD>avgTimeBodyGyroMean-X</TD><TD>Double</TD><TD>Average of time body Gyro Mean in X dimension of the phone</TD></TR>
<TR><TD>22</TD><TD>avgTimeBodyGyroMean-Y</TD><TD>Double</TD><TD>Average of time body Gyro Mean in Y dimension of the phone</TD></TR>
<TR><TD>23</TD><TD>avgTimeBodyGyroMean-Z</TD><TD>Double</TD><TD>Average of time body Gyro Mean in Z dimension of the phone</TD></TR>
<TR><TD>24</TD><TD>avgTimeBodyGyroStd-X</TD><TD>Double</TD><TD>Average of time body Gyro Std Deviation in X dimension of the phone</TD></TR>
<TR><TD>25</TD><TD>avgTimeBodyGyroStd-Y</TD><TD>Double</TD><TD>Average of time body Gyro Std Deviation in Y dimension of the phone</TD></TR>
<TR><TD>26</TD><TD>avgTimeBodyGyroStd-Z</TD><TD>Double</TD><TD>Average of time body Gyro Std Deviation in Z dimension of the phone</TD></TR>
<TR><TD>27</TD><TD>avgTimeBodyGyroJerkMean-X</TD><TD>Double</TD><TD>Average of time body Gyro Jerk Mean in X dimension of the phone</TD></TR>
<TR><TD>28</TD><TD>avgTimeBodyGyroJerkMean-Y</TD><TD>Double</TD><TD>Average of time body Gyro Jerk Mean in Y dimension of the phone</TD></TR>
<TR><TD>29</TD><TD>avgTimeBodyGyroJerkMean-Z</TD><TD>Double</TD><TD>Average of time body Gyro Jerk Mean in Z dimension of the phone</TD></TR>
<TR><TD>30</TD><TD>avgTimeBodyGyroJerkStd-X</TD><TD>Double</TD><TD>Average of time body Gyro Jerk Std Deviation in X dimension of the phone</TD></TR>
<TR><TD>31</TD><TD>avgTimeBodyGyroJerkStd-Y</TD><TD>Double</TD><TD>Average of time body Gyro Jerk Std Deviation in Y dimension of the phone</TD></TR>
<TR><TD>32</TD><TD>avgTimeBodyGyroJerkStd-Z</TD><TD>Double</TD><TD>Average of time body Gyro Jerk Std Deviation in Z dimension of the phone</TD></TR>
<TR><TD>33</TD><TD>avgTimeBodyAccMagMean</TD><TD>Double</TD><TD>Average of time body acceleration Mag Mean of the phone</TD></TR>
<TR><TD>34</TD><TD>avgTimeBodyAccMagStd</TD><TD>Double</TD><TD>Average of time body acceleration Mag Std Deviation of the phone</TD></TR>
<TR><TD>35</TD><TD>avgTGravityAccMagMean</TD><TD>Double</TD><TD>Average of time Gravity acceleration Mag Mean of the phone</TD></TR>
<TR><TD>36</TD><TD>avgTGravityAccMagStd</TD><TD>Double</TD><TD>Average of time Gravity acceleration Mag Std Deviation of the phone</TD></TR>
<TR><TD>37</TD><TD>avgTimeBodyAccJerkMagMean</TD><TD>Double</TD><TD>Average of time body acceleration Jerk Mag Mean of the phone</TD></TR>
<TR><TD>38</TD><TD>avgTimeBodyAccJerkMagStd</TD><TD>Double</TD><TD>Average of time body acceleration Jerk Mag Std Deviation of the phone</TD></TR>
<TR><TD>39</TD><TD>avgTimeBodyGyroMagMean</TD><TD>Double</TD><TD>Average of time body Gyro Mag Mean of the phone</TD></TR>
<TR><TD>40</TD><TD>avgTimeBodyGyroMagStd</TD><TD>Double</TD><TD>Average of time body Gyro Mag Std Deviation of the phone</TD></TR>
<TR><TD>41</TD><TD>avgTimeBodyGyroJerkMagMean</TD><TD>Double</TD><TD>Average of time body Gyro Jerk Mag Mean of the phone</TD></TR>
<TR><TD>42</TD><TD>avgTimeBodyGyroJerkMagStd</TD><TD>Double</TD><TD>Average of time body Gyro Jerk Mag Std Deviation of the phone</TD></TR>
<TR><TD>43</TD><TD>avgFreqBodyAccMean-X</TD><TD>Double</TD><TD>Average of frequency body acceleration Mean in X dimension of the phone</TD></TR>
<TR><TD>44</TD><TD>avgFreqBodyAccMean-Y</TD><TD>Double</TD><TD>Average of frequency body acceleration Mean in Y dimension of the phone</TD></TR>
<TR><TD>45</TD><TD>avgFreqBodyAccMean-Z</TD><TD>Double</TD><TD>Average of frequency body acceleration Mean in Z dimension of the phone</TD></TR>
<TR><TD>46</TD><TD>avgFreqBodyAccStd-X</TD><TD>Double</TD><TD>Average of frequency body acceleration Std Deviation in X dimension of the phone</TD></TR>
<TR><TD>47</TD><TD>avgFreqBodyAccStd-Y</TD><TD>Double</TD><TD>Average of frequency body acceleration Std Deviation in Y dimension of the phone</TD></TR>
<TR><TD>48</TD><TD>avgFreqBodyAccStd-Z</TD><TD>Double</TD><TD>Average of frequency body acceleration Std Deviation in Z dimension of the phone</TD></TR>
<TR><TD>49</TD><TD>avgFreqBodyAccMeanFreq-X</TD><TD>Double</TD><TD>Average of frequency body acceleration Mean Frequency in X dimension of the phone</TD></TR>
<TR><TD>50</TD><TD>avgFreqBodyAccMeanFreq-Y</TD><TD>Double</TD><TD>Average of frequency body acceleration Mean Frequency in Y dimension of the phone</TD></TR>
<TR><TD>51</TD><TD>avgFreqBodyAccMeanFreq-Z</TD><TD>Double</TD><TD>Average of frequency body acceleration Mean Frequency in Z dimension of the phone</TD></TR>
<TR><TD>52</TD><TD>avgFreqBodyAccJerkMean-X</TD><TD>Double</TD><TD>Average of frequency body acceleration Jerk Mean in X dimension of the phone</TD></TR>
<TR><TD>53</TD><TD>avgFreqBodyAccJerkMean-Y</TD><TD>Double</TD><TD>Average of frequency body acceleration Jerk Mean in Y dimension of the phone</TD></TR>
<TR><TD>54</TD><TD>avgFreqBodyAccJerkMean-Z</TD><TD>Double</TD><TD>Average of frequency body acceleration Jerk Mean in Z dimension of the phone</TD></TR>
<TR><TD>55</TD><TD>avgFreqBodyAccJerkStd-X</TD><TD>Double</TD><TD>Average of frequency body acceleration Jerk Std Deviation in X dimension of the phone</TD></TR>
<TR><TD>56</TD><TD>avgFreqBodyAccJerkStd-Y</TD><TD>Double</TD><TD>Average of frequency body acceleration Jerk Std Deviation in Y dimension of the phone</TD></TR>
<TR><TD>57</TD><TD>avgFreqBodyAccJerkStd-Z</TD><TD>Double</TD><TD>Average of frequency body acceleration Jerk Std Deviation in Z dimension of the phone</TD></TR>
<TR><TD>58</TD><TD>avgFreqBodyAccJerkMeanFreq-X</TD><TD>Double</TD><TD>Average of frequency body acceleration Jerk Mean Frequency in X dimension of the phone</TD></TR>
<TR><TD>59</TD><TD>avgFreqBodyAccJerkMeanFreq-Y</TD><TD>Double</TD><TD>Average of frequency body acceleration Jerk Mean Frequency in Y dimension of the phone</TD></TR>
<TR><TD>60</TD><TD>avgFreqBodyAccJerkMeanFreq-Z</TD><TD>Double</TD><TD>Average of frequency body acceleration Jerk Mean Frequency in Z dimension of the phone</TD></TR>
<TR><TD>61</TD><TD>avgFreqBodyGyroMean-X</TD><TD>Double</TD><TD>Average of frequency body Gyro Mean in X dimension of the phone</TD></TR>
<TR><TD>62</TD><TD>avgFreqBodyGyroMean-Y</TD><TD>Double</TD><TD>Average of frequency body Gyro Mean in Y dimension of the phone</TD></TR>
<TR><TD>63</TD><TD>avgFreqBodyGyroMean-Z</TD><TD>Double</TD><TD>Average of frequency body Gyro Mean in Z dimension of the phone</TD></TR>
<TR><TD>64</TD><TD>avgFreqBodyGyroStd-X</TD><TD>Double</TD><TD>Average of frequency body Gyro Std Deviation in X dimension of the phone</TD></TR>
<TR><TD>65</TD><TD>avgFreqBodyGyroStd-Y</TD><TD>Double</TD><TD>Average of frequency body Gyro Std Deviation in Y dimension of the phone</TD></TR>
<TR><TD>66</TD><TD>avgFreqBodyGyroStd-Z</TD><TD>Double</TD><TD>Average of frequency body Gyro Std Deviation in Z dimension of the phone</TD></TR>
<TR><TD>67</TD><TD>avgFreqBodyGyroMeanFreq-X</TD><TD>Double</TD><TD>Average of frequency body Gyro Mean Frequency in X dimension of the phone</TD></TR>
<TR><TD>68</TD><TD>avgFreqBodyGyroMeanFreq-Y</TD><TD>Double</TD><TD>Average of frequency body Gyro Mean Frequency in X dimension of the phone</TD></TR>
<TR><TD>69</TD><TD>avgFreqBodyGyroMeanFreq-Z</TD><TD>Double</TD><TD>Average of frequency body Gyro Mean Frequency in Y dimension of the phone</TD></TR>
<TR><TD>70</TD><TD>avgFreqBodyAccMagMean</TD><TD>Double</TD><TD>Average of frequency body acceleration Mag Mean in Z dimension of the phone</TD></TR>
<TR><TD>71</TD><TD>avgFreqBodyAccMagStd</TD><TD>Double</TD><TD>Average of frequency body acceleration Mag Std Deviation of the phone</TD></TR>
<TR><TD>72</TD><TD>avgFreqBodyAccMagMeanFreq</TD><TD>Double</TD><TD>Average of frequency body acceleration Mag Mean Frequency of the phone</TD></TR>
<TR><TD>73</TD><TD>avgFreqBodyBodyAccJerkMagMean</TD><TD>Double</TD><TD>Average of frequency body body acceleration Jerk Mag Mean of the phone</TD></TR>
<TR><TD>74</TD><TD>avgFreqBodyBodyAccJerkMagStd</TD><TD>Double</TD><TD>Average of frequency body body acceleration Jerk Mag Std Deviation of the phone</TD></TR>
<TR><TD>75</TD><TD>avgFreqBodyBodyAccJerkMag-meanFreq</TD><TD>Double</TD><TD>Average of frequency body body acceleration Jerk Mag Mean Frequency of the phone</TD></TR>
<TR><TD>76</TD><TD>avgFreqBodyBodyGyroMagMean</TD><TD>Double</TD><TD>Average of frequency body body Gyro Mag Mean  of the phone</TD></TR>
<TR><TD>77</TD><TD>avgFreqBodyBodyGyroMag-std</TD><TD>Double</TD><TD>Average of frequency body body Gyro Mag Std Deviation of the phone</TD></TR>
<TR><TD>78</TD><TD>avgFreqBodyBodyGyroMagMeanFreq</TD><TD>Double</TD><TD>Average of frequency body body Gyro Mag Mean Frequency  of the phone</TD></TR>
<TR><TD>79</TD><TD>avgFreqBodyBodyGyroJerkMagMean</TD><TD>Double</TD><TD>Average of frequency body body Gyro Jerk Mag Mean  of the phone</TD></TR>
<TR><TD>80</TD><TD>avgFreqBodyBodyGyroJerkMagStd</TD><TD>Double</TD><TD>Average of frequency body body Gyro Jerk Mag Std Deviation of the phone</TD></TR>
<TR><TD>81</TD><TD>avgFreqBodyBodyGyroJerkMagMeanFreq</TD><TD>Double</TD><TD>Average of frequency body body Gyro Jerk Mag Mean Frequency of the phone</TD></TR>
</table>

