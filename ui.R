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
            numericInput("n",
                        "Type in an integer:",
                        value = 200), 
            hr(),
            print(HTML("When I tried to draw a circle, 
                   I made a all-star trignometric mistake by using 360 instead 
                   of 2&pi; in my code. It turns out to be a beautiful mistake."))
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot"),
            hr(),
            htmlOutput("copyright")
        )
    )
))
