

library(shiny)
library(shinyRGL)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("3D Kernal Density"),
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    sliderInput("r1", 
                "Inner", 
                min = 0, 
                max = 1, 
                value = .5),
    sliderInput("r2", 
                "Middle", 
                min = 0, 
                max = 1, 
                value = .75),
    sliderInput("r3", 
                "Outer", 
                min = 0, 
                max = 1, 
                value = .9)
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
   webGLOutput("myWebGL")
  )
))
