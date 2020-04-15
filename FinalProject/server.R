#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(caret)
library(rattle)

data(iris)

shinyServer(function(input, output) {
   
  output$Plot <- renderPlot({
    f <- input$features
    d <- iris[1:f]
    iris_ <- cbind( iris[1:f], iris$Species)
    names(iris_)[f+1] <- c("Species")
    model <- train(Species ~ .,method="rpart",data=iris_)
    fancyRpartPlot(model$finalModel)
  })
  
  
  
})
