# load packages
require(stringi)  # Character String Processing Facilities
require(reshape2) # Flexibly Reshape Data
require(ggplot2)  # An Implementation of the Grammar of Graphics
require(ggthemes) # Extra Themes, Scales and Geoms for ggplot2
require(ggmap)    # Spatial Visualization with ggplot2

# Functions
# - Capitalise
capwords <- function(s, strict = FALSE) {
  cap <- function(s) paste(toupper(substring(s, 1, 1)),
                           {s <- substring(s, 2); if (strict) tolower(s) else s},
                           sep      = "", 
                           collapse = " ")
  sapply(strsplit(s, split = " "), cap, USE.NAMES = !is.null(names(s)))
}
# Load San Francisco's data set
sf<- data
# convert Category to factors (Nominal) variable
sf$Category<- factor(capwords(tolower(sf$Category)))
# reduce Category to a table of frequencies
Data<- as.data.frame(table(sf$Category), stringsAsFactors = FALSE)
# change columns' names
colnames(Data)<- c("Category", "Frequency")
# order by decresing frequency
Data<- Data[order(Data$Frequency, decreasing = TRUE), ]
# force the new order as factor, necessary to force the order in the chart
Data$Category<- factor(Data$Category, levels = Data$Category)
# filter to the top 15
Data<- Data[1:15, ]

# create the chart for category 
g<- ggplot(Data)
g<- g + geom_histogram(aes(x = Category, y = Frequency, fill = Frequency), stat = "identity")
g<- g + ggtitle(expression(atop("What is Happening", atop(italic("Top 15 Category of Incidents (Summer 2014)"), ""))))
g<- g + scale_fill_continuous(low = "orange", high = "red")
g<- g + theme(axis.text.x = element_text(angle = 45, hjust = 1))
g

# convert Resolution to factors (Nominal) variable
sf$Resolution<- factor(capwords(tolower(sf$Resolution)))

# reduce Resolution to a table of frequencies
Data<- as.data.frame(table(sf$Resolution), stringsAsFactors = FALSE)
# change columns' names
colnames(Data)<- c("Resolution", "Frequency")
# order by decresing frequency
Data<- Data[order(Data$Frequency, decreasing = TRUE), ]
# force the new order as factor, necessary to force the order in the chart
Data$Resolution <- factor(Data$Resolution, levels = Data$Resolution)
# filter to the top 15
Data<- Data[1:5, ]

# create the chart for resolution
g<- ggplot(Data)
g<- g + geom_histogram(aes(x = Resolution, y = Frequency, fill = Frequency), stat = "identity")
g<- g + ggtitle(expression(atop("Actions Being Taken", atop(italic("Top 5 Resolutions of Incidents (Summer 2014)"), ""))))
g<- g + scale_fill_continuous(low = "yellow", high = "red")
g

# convert DayOfWeek to factors (Nominal) variable and force calendar order
sf$DayOfWeek<- factor(sf$DayOfWeek, 
                       levels = c("Monday", "Tuesday",  "Wednesday", "Thursday", 
                                  "Friday", "Saturday", "Sunday"))
sf$Hour<- stri_replace_all_regex(str         = sf$Time,
                                       pattern     = "([0-2][0-9]).*",
                                       replacement = "$1")
sf$Hour<- factor(sf$Hour)

# reduce DayOfWeek and Hour to a table of frequencies
Data<- dcast(sf, DayOfWeek + Hour ~ .)
# change columns' names
colnames(Data)  <- c("DayOfWeek", "Hour", "Frequency")

# create the chart for resolution
g <- ggplot(Data)
g <- g + geom_point(aes(x = DayOfWeek, y = Hour, size = Frequency, colour = Frequency), stat = "identity")
g <- g + ggtitle(expression(atop("Times Incidents Are Happening", atop(italic("Hour by Day of the Week of Incidents | SF Summer 2014"), ""))))
g <- g + scale_colour_continuous(low = "yellow", high = "red")
g