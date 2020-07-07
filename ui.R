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
    tags$head(
        tags$style(HTML("
                    * {
                    font-family: Palatino,garamond,serif;
                    font-weight: 500;
                    line-height: 1.2;
                    #color: #000000;
                    }
                    "))
    ),    

    # Application title
    titlePanel("A Beautiful Mistake"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            withMathJax(),
            numericInput("dt",
                         "The increment angle \\(\\theta\\)",
                         value = 103.65), 
            numericInput("n",
                        "The number of points",
                        value = 200), 
            sliderInput("u",
                        "Slide to reorient the graph",
                        min = 0, max = 180, value = 0, ticks = FALSE,
                        ),
            hr(),
            print(HTML("The increment angle &theta; (in degrees) is the rotation from one point to the next 
            along the invisible circumscribed circle. For example:
            
            <ul><li style = 'margin-bottom:0.3em;'>&theta; = 120&deg; with 4 points draws a perfect triangle.</li>
                       <li style = 'margin-bottom:0.3em;'>&theta; = 120.3&deg; with 40 points
                       draws an artistic triangle.</li>
                       <li style = 'margin-bottom:0.3em;'>&theta; = 120.005&deg; with 400 points draws
                       an almost perfect and almost artistic triangle.</li></ul>"))
        ),
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot"),
            hr(),
            htmlOutput("copyright")
        )
    )
))
