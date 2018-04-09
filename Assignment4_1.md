Developing Data Products Assignment Week 4
========================================================
author: Sanyam Jain
date: 10 April 2018
autosize: true

Introduction to App
========================================================

This application is based on San Francisco Park Scores from kaggle (https://www.kaggle.com/danofer/sf-parks/data).
The data contains average quarterly park evaluation scores in San Francisco, from Q3 FY2005 to Q4 FY2014.
Data includes merged data with Recreation and Parks Facilities data, including location and descriptions.

This application is divided in 5 tabs as follows:

- Introduction: Contains a breif introduction

- Data Summary: Contains the summary of the dataset

- Data: Contains the data of the Zipcodes selected from the dropdown in the sidebar

- Histogram of Scores: Contains a histogram of the Scores of the Zipcodes selected in the dropdown with number of bins set using the slider.
Also various types of distributions can be plotted using the radio buttons.
The bins of different zipcodes can by diffrentiated by color.

- Plot: Contains a Scatter Plot of Square Feet of park vs its Score for the selected zipcodes.
Different available facilities can also be seen by the color in the plot.

About the Dataset
========================================================
San Francisco Park Scores

Context: 
Average quarterly park evaluation scores in San Francisco, from Q3 FY2005 to Q4 FY2014.

Content: 
Data includes merged data with Recreation and Parks Facilities data, including location and descriptions. Location (LatLong) data missing for 775 rows.

Acknowledgements: 
The data is provided by San Francisco Recreation & Parks Department via the San Francisco Open Data Portal. Sources: - Park Scores 2005-2014.
Recreation and Parks Facilities Facilities maintained by the Recreation and Parks Department. A facility in this dataset represents a structural or physical amenity within a property's boundaries.

Kaggle Link: https://www.kaggle.com/danofer/sf-parks

Objectives 1
========================================================
- To create a Shiny Application :

Application is hosted at : 
https://samjain27.shinyapps.io/Assignment4/

Review criteria for this assignment is as below :
- Was there enough documentation on the shiny site for a user to get started using the application?
- Did the application run as described in the documentation?
-Was there some form of widget input (slider, textbox, radio buttons, checkbox, …) in either ui.R or a custom web page?
-Did server.R perform some calculations on the input in server.R?
-Was the server calculation displayed in the html page?
-Was the app substantively different than the very simple applications built in the class? Note, it’s OK if the app is simple and based on the one presented in class. I just don’t want it to be basically a carbon copy of the examples we covered. For example, if someone simply changed the variable names, then this would not count. However, a prediction algorithm that had a similar layout would be fine.
-Here’s your opportunity to give the app +1 for being well done, or neat, or even just a solid effort.

Objectives 2
========================================================
- To create a R Presentation :
Presentation is hosted at: 
https://rpubs.com/samjain_27/ddpass4

Review criteria for this assignment is as below :
- Was the presentation completed in slidify or R Presenter?
- Was it 5 pages?
- Did it contain an R expression that got evaluated and displayed?
- Did it contain an R expression that got evaluated and displayed?
- Was it hosted on github or Rpubs?
- Was the server calculation displayed in the html page?
- Here’s your opportunity to give this presentation a +1 for being well done. Did they tinker around with the default style? Was the presentation particularly lucid and well organized? In other words, the student made a legitimate try.
- There were no R errors displayed in the presentation.

Structure of data
========================================================

```
'data.frame':	5494 obs. of  16 variables:
 $ ParkID          : int  86 13 9 117 60 42 10 94 104 153 ...
 $ PSA             : Factor w/ 7 levels "GGP","PSA1","PSA2",..: 5 5 5 3 7 4 5 1 3 2 ...
 $ Park            : Factor w/ 184 levels "10th Avenue-Clement Mini Park",..: 28 94 149 5 89 105 101 61 69 52 ...
 $ FQ              : Factor w/ 38 levels "FY05Q3","FY05Q4",..: 1 1 1 2 2 2 2 2 2 2 ...
 $ Score           : num  0.795 0.957 0.864 0.857 0.859 0.846 0.73 0.588 0.873 1 ...
 $ Facility.Type   : Factor w/ 11 levels "","Activity Center",..: 4 3 7 11 4 4 3 4 4 5 ...
 $ Facility.Name   : Factor w/ 159 levels "","Alamo: Restrooms",..: 115 56 24 54 36 19 28 136 156 20 ...
 $ Address         : Factor w/ 106 levels "","100 Collingwood",..: 52 59 25 67 96 41 2 90 33 41 ...
 $ State           : Factor w/ 2 levels "","CA": 2 2 2 2 2 2 2 2 2 2 ...
 $ Zipcode         : int  94112 94131 94114 94124 94117 94112 94114 94124 94116 94112 ...
 $ Floor.Count     : int  NA NA NA NA NA NA NA NA NA 1 ...
 $ Square.Feet     : num  5572 124520 70655 379 4646 ...
 $ Perimeter.Length: num  312 1891.7 1153 94.3 279.5 ...
 $ Acres           : num  0.12792 2.85861 1.62203 0.00869 0.10665 ...
 $ Longitude       : num  -122 -122 -122 -122 -122 ...
 $ Latitude        : num  37.7 37.7 37.7 37.7 37.8 ...
```


Plot of Scores
========================================================
![plot of chunk unnamed-chunk-2](Assignment4_1-figure/unnamed-chunk-2-1.png)


Links
========================================================
- Shiny App: https://samjain27.shinyapps.io/Assignment4/
- Rpubs Presentation: https://rpubs.com/samjain_27/ddpass4
- Github Files: https://github.com/samjain27/DevelopingDataProducts
