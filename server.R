# server.R
install.packages('shiny')
library(shiny)
# Define server logic required for a  plot
# Normal Distribution
# A Vertical Line  
# To  Report a p-value
shinyServer(
  function(input,output){
    output$distPlot <- renderPlot({
      # generate rnorm distribution and plot it 
      x <- seq(-10,10,by = 0.01)
      y <- dnorm(x,mean=mean(x),sd=sd(x))
      xl <- rep(input$score,301)
      yl <- seq(0,0.3,by = 0.001)
      plot(x, y, type = "l",col="blue", lwd=4,ylab = "Pr(X=x)")
      lines(xl,yl,col="magenta",lwd=2)
    })
    lower <- reactive({ switch(input$lo,
             "lower" = T,
             "upper" = F)
    })
    output$pvalue <- renderPrint({
      pnorm(input$score, 0,1, lower.tail = lower())
    })
  }
)