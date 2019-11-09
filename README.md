# Crime Analytics Visualization of Incident Reports

Brief Summary:\
Specialisation:	Data Science at Scale\
Course:	Communicating Data Science Results\
Education: Institution	Washington University\
Publisher:	Coursera\
Assignment:	Crime Analytics: Visualisation of Incident Reports\
\
Using the SF summer 2014 dataset, I decided to focus on the top 10 reported crimes in the data. I subsetted the data so that it only contained the following data set:

|	Category   |  IncidntNum |
|---|---|
|	ASSAULT        |   2882  |
|DRUG/NARCOTIC   |   1345  |
|LARCENY/THEFT   |   9466  |
| MISSING PERSON |   1266  |
| NON-CRIMINAL   |   3023  |
| OTHER OFFENSES |   3567  |
|SECONDARY CODES |   442   |
| SUSPICIOUS OCC |   1300  |
| VEHICLE THEFT  |   1966  |
| WARRANTS       |   1782  |
\
http://rpubs.com/isrraelmendoza92/548160
\
I then plotted the frequency of each of these incidents, grouped by their summarised offence description (Summarized.Offense.Description), by the hour of the day at which the incident occurred (Occurred.Date.or.Date.Range.Start). The points in the visualisation represent actual values, the plot lines for each Summarized Offence Description has been smoothed to emphasise the trend / fit over 24 hours.
\
I suspected that these crime incidents would also lean towards occurence on the weekend. I plotted these incidents grouped by DayOfWeek. 
\
http://rpubs.com/isrraelmendoza92/548162
