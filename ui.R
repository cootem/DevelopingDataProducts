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
      tabPanel("Prediction", plotOutput("lmFit")),
      tabPanel("Documentation", 
               textOutput("summary"),
               tags$style(type="text/css", 
                          "#summary {
                          white-space: pre-wrap; 
                          width: 90%; 
                          padding-left: 20px;
                          padding-top: 20px; }")),
      tabPanel("Sample Data", dataTableOutput("sampleData"))
    )
  ))
))
