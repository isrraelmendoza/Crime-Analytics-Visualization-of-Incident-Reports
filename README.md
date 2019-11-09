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

http://rpubs.com/isrraelmendoza92/548160


<h2>Q1</h2>

I suspected that these crime incidents would also lean towards occurence on the weekend. I plotted these incidents grouped by DayOfWeek. The guess proved to be correct:


http://rpubs.com/isrraelmendoza92/548162

Using an improved frequency subset approach, I improved this analysis:

http://rpubs.com/isrraelmendoza92/548191

Then we explored what resolution was being taken against the crime incidents:

http://rpubs.com/isrraelmendoza92/548213

<h2>Q2</h2>

Another key question was when were the incidents occuring?
The key variables that can help answering this question are DayOfWeek, Date and Time.
It can be seen that during the week the incidents occur more in the evenings generally between 17 PM and 18 PM. There was also a heavy skey around the late hours.  During weekends and including Fridays, the incidents are concentrated in the evening and then at late hours, around 23 hours.

http://rpubs.com/isrraelmendoza92/548215
