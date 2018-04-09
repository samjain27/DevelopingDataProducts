# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(plotly)
library(ggplot2)
data <-read.csv("park_scores.csv")
shinyServer(function(input, output) {
  #data for "Histogram of scores tab"
  output$distPlot <- renderPlot({
    dist <- switch(input$dist,
                   Normal = rnorm,
                   Uniform = runif,
                   Lognormal = rlnorm,
                   Exponential = rexp,
                   rnorm)

   mydata <- subset(data,data$Zipcode == c(input$var),select = c(Zipcode,Score,ParkID))
    hist(dist(mydata$Score),breaks = input$obs,xlab="Score", col = mydata$Zipcode,
         main = paste(input$dist, "Distribution with ", input$obs, " Observations"))
     })

  #data for "Plot tab"
  output$Plot<-  renderPlot({
    mydata <- subset(data,data$Zipcode == c(input$var))
    ggplot(mydata, aes(x = Square.Feet, y = Score,color = Facility.Type)) +
      geom_point()+  labs(title="Square Feet vs Score Diffrentiated by Facility type",x="Square Feet", y = "Score")
  })
  
  # data for "Data tab"
  output$displayData <- renderTable({
    mydata <- subset(data,data$Zipcode == c(input$var))
    mydata
  })
  

  # data for "Summary Tab"
  rendersumry <- reactive({ summary(mydata)})
  
  output$sumry <- renderPrint({
    rendersumry()
  })
  
  #data for "Introduction Tab"
  
  output$intro <- renderText({
    "This application is based on San Francisco Park Scores from kaggle (https://www.kaggle.com/danofer/sf-parks/data).
The data contains average quarterly park evaluation scores in San Francisco, from Q3 FY2005 to Q4 FY2014.
Data includes merged data with Recreation and Parks Facilities data, including location and descriptions.
This application is divided in 5 tabs as follows:

Introduction: Contains a breif introduction

Data Summary: Contains the summary of the dataset

Data: Contains the data of the Zipcodes selected from the dropdown in the sidebar

Histogram of Scores: Contains a histogram of the Scores of the Zipcodes selected in the dropdown with number of bins set using the slider.
Also various types of distributions can be plotted using the radio buttons.
The bins of different zipcodes can by diffrentiated by color.

Plot: Contains a Scatter Plot of Square Feet of park vs its Score for the selected zipcodes.
Different available facilities can also be seen by the color in the plot.
"

  })
  

}
)