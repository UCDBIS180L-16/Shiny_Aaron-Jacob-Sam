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
<<<<<<< HEAD
   
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
=======
  
  # Expression that generates a boxplot. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$boxPlot <- renderPlot({
    
    # set up the plot
    pl <- ggplot(data = iris,
                 #Use aes_string below so that input$trait is interpreted
                 #correctly.  The other variables need to be quoted
                 aes_string(x="Species",
                            y=input$trait,
                            fill="Species"
                 )
    )
    
    # draw the boxplot for the specified trait
    pl + geom_boxplot()
>>>>>>> 7d9247a27acea89cbd31b59fba4e2e933a7fecda
  })
})


#shinyapps::deployApp('/home/bis180l_local/Shinyapps/Shiny_Aaron-Jacob-Sam') 
#to deploy app later
