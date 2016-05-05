
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
  titlePanel("(Rice Scatter Plot"),
  
  # Some Directions and Information
  helpText("Select variables to compare.",
           "This application will create a scatter plot with options for X and Y axes and color."),
  
  # Sidebar with a radio box to input which traits will be plotted
  sidebarLayout(
    sidebarPanel(
      radioButtons("Variable1", 
                   "Choose a variable to display on the X axis:",
                   c("Sepal.Length",
                     "Sepal.Width",
                     "Petal.Length",
                     "Petal.Width")),
    sidebarPanel(
      radioButtons("Variable2", 
                    "Choose a variable to display on the Y axis:",
                    c("Sepal.Length",
                    "Sepal.Width",
                    "Petal.Length",
                    "Petal.Width")),
      radioButtons("Color", 
                   "Choose a trait to display by color:",
                   c("Sepal.Length",
                   "Sepal.Width",
                   "Petal.Length",
                   "Petal.Width")))
      )
      ),
                   
      
    
    # Show a plot of the generated distribution
    mainPanel(plotOutput("distPlot")
    )
)
)