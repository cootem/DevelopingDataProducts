# UI for Shiny app

shinyUI(fluidPage(
  headerPanel("Developing Data Products"),
  titlePanel("Predicting Childs Heights"),
  sidebarLayout(sidebarPanel(
    sliderInput(
      'pHeight',
      'Choose the average parents height in inches',
      value = 70,
      min = 60,
      max = 80,
      step = 1
    )
  ),
  mainPanel(
    tabsetPanel(
      type = "tabs",
      tabPanel("Plot", plotOutput("lmFit")),
      tabPanel("Documentation", verbatimTextOutput("summary"))
    )
  ))
))
