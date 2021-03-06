# server for shiny app

library(shiny)
library(UsingR)
data(galton)

shinyServer(  
  function(input, output) {    
    output$lmFit <- renderPlot({      
      fit <- lm(data = galton, child ~ parent)
      pH <- input$pHeight
      cH <- predict(fit, newdata = data.frame(parent = pH))
      plot(child ~ parent, data = galton, pch = 19, col = "gray", 
           xlim = c(60, 80), ylim = c(60, 80))
      abline(fit, col = "red", lwd = 3)
      points(pH, cH, pch = 19, col = "blue", lwd = 5, cex = 5)
      text(65, 78, paste("parents height = ", pH), col = "blue")
      text(75, 62, paste("childs height = ", round(cH, 1)), col = "blue")   
    })
    output$summary <- renderText((
"This tool predicts childs heights based on the average height of their parents.

This is an idea first presented by Francis Galton. His theory is that a childs height can be predicted by looking at the heights of the parents (using females heights scaled to 1.08). With the caveat that heights regress to the mean - tall parents have slightly less tall children and short parents have slightly taller children. The model uses his original dataset. 

Choose a value using the slider and the predicted childs height will be shown with the moving blue dot.

The samples used in the model are shown in gray."))
    output$sampleData <- renderDataTable(
      galton,
      options = list(pageLength = 10 ) )}
)
