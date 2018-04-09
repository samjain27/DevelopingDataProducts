# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
library(shiny)

shinyUI(fluidPage(
  # Application title
  titlePanel("Scores of Parks in San Fracisco by ZipCode"),
  # Sidebar with a slider input for type of distributionT and slider input.
  # FOR number of bins
  sidebarLayout(
    sidebarPanel(
      fluidRow(column(8,
                      sliderInput("obs",
                                  "Number of Observations:",
                                  min = 10,
                                  max = 100,
                                  value = 5))),
      fluidRow(column(8,
                      radioButtons("dist", "Distribution type:",
                                   c("Normal" = "Normal",
                                     "Uniform" = "Uniform",
                                     "Lognormal" = "Lognormal",
                                     "Exponential" = "Exponential")))),
      
      br(),   br(),
      #------------------------------------------------------------------
      # Add Variables selection option for ZIP CODE : 
      selectInput("var", "Select Zipcode for area wise score", 
                  choices=c("94112"="94112", "94131" = "94131", "94114"="94114", "94124" = "94124", "94117" = "94117", "94116" = "94116",
                            "94132" = "94132", "94127" = "94127", "94110" = "94110", "94121" = "94121", "94118" = "94118", "94122" = "94122",
                            "94134" = "94134", "94102" = "94102", "94107" = "94107", "94103" = "94103","94108" = "94108", "94115" = "94115",
                            "94133" = "94133", "94111" = "94111", "94123" = "94123", "94109" = "94109"),
                  multiple=TRUE,selected = "94112"
      ),
      
      br(),   br()
      ),
    # Show a plot of the generated distribution
    
    mainPanel(
      #------------------------------------------------------------------
      # Create tab panes
      tabsetPanel(type="tab",
                  tabPanel("Introduction",verbatimTextOutput("intro")),
                  tabPanel("Data Summary",verbatimTextOutput("sumry")),
                  tabPanel("Data", tableOutput("displayData")),
                  tabPanel("Histogram Of Scores", plotOutput("distPlot")),
                  tabPanel("Plot", plotOutput("Plot"))
      )
      
            
    )
  )	 
)
)