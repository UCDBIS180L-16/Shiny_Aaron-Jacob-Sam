
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("(<insert application title here>"),
  
  # Some Directions and Information
  helpText("<insert directions text here>.",
           "This application will <insert description what the application does text here>."),
  
  # Sidebar with a radio box to input which trait will be plotted
  sidebarLayout(
    sidebarPanel(
      radioButtons("trait", #the input variable that the value will go into
                   "Choose a trait to display:",
                   c("Sepal.Length",
                     "Sepal.Width",
                     "Petal.Length",
                     "Petal.Width")
      )),
    
    # Show a plot of the generated distribution
    mainPanel(plotOutput("boxPlot")
    )
  )
))