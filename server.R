#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
#library(<insert data>)
#load(<insert dataset>)

library(shiny)
library(ggplot2)

# Define server logic required to draw a boxplot
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


#shinyapps::deployApp('/home/bis180l_local/Shinyapps/Shiny_Aaron-Jacob-Sam') 
#to deploy app later
