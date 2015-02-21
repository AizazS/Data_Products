install.packages('shiny')
library(shiny)
#setwd("~/Coursera/Developing Data Products/PA-Shiny")
# ui.R
library(shiny)
# Define UI for plotting standard normal density function and report probability
shinyUI(pageWithSidebar(
  # Application Title
  headerPanel("Standard Normal Density"),
  # Sidebar with a slider input for
  sidebarPanel(
    p("This App computs the Normal Density Function"),
    p("To use this App 1) pick a value with the slider. 2) Pick whether tail is Upper or Lower "),
    
    h3('Slider'),
    h4('Choose a Score'),
    sliderInput("score",
                "It can be any value between -10 and 10:",
                min = -10,
                max = 10,
                value = 0,
                step = 0.01),
    h3('Tail'), selectInput("lo",
                            " ",
                            choices = c("Lower", "Upper"),
                            selected = "lower"
    )
  ),
    

  # Normal Distribution score is indicated by magenta line
  mainPanel(
    plotOutput("distPlot"),
    h4("The Corresponding Probability is"),
    verbatimTextOutput("pvalue")
  )
))
