
library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("TrainSet"),
  
  # Sidebar with a slider input for number of features 
  sidebarLayout(
    sidebarPanel(
       sliderInput("features",
                   "Number of features you will use:",
                   min = 1,
                   max = 4,
                   value = 2
                   )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("Plot")
    )
  )
))
