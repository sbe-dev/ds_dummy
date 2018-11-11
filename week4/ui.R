#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Plot random numbers"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput("numberColors", "How many colors should be used in the plot?",
                  1, 8, value = c(1)),
      hr(),
      numericInput("numeric", "How many random numbers should be plotted?",
                   value = 1000, min = 1, max = 1000, step = 1),
      sliderInput("sliderX", "Pick minimum and maximum X values",
                  -100, 100, value = c(-50,50)),
      sliderInput("sliderY", "Pick minimum and maximum Y values",
                  -100, 100, value = c(-50,50))
    ),
    # Show a plot of the generated distribution
    mainPanel(
      h3("Graph of Random Points with multiple colors"),
      p("Based on the example from lecture Shiny 1.5"),
      hr(),
      h4("Usage:"),
      p("Please use the slider in the top of the side panel to change the number 
        of colors used in the plot."),
      h6("Selected colors"),
      textOutput("colors"),
      hr(),
      plotOutput("plot1")
    )
  )
))
