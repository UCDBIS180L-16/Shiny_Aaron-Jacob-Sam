#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2) #load in ggplot
#library(<insert dataset>)
#load(<insert dataset>)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    
    # draw the histogram with the specified number of bins
    pl<-ggplot(data=data.pheno.mds,
               aes_string(x=input$Variable1,
                          y=input$Variable2,
                          color=input$Color,
                          shape=popID
                          )
               )
    pl+geom_point()
  })
  
})
