shinyUI(fluidPage(  
#  headerPanel("Developing Data Products"),
#### make reactive ####

titlePanel("Guess the MU"),
sidebarLayout(sidebarPanel(
  sliderInput(
    'mu',
    'Choose a value for mu',
    value = 70,
    min = 60,
    max = 80,
    step = 0.05
  )
),
mainPanel(tabsetPanel(
  type = "tabs",
  tabPanel("Plot", plotOutput("newHist")),
  tabPanel("Documentation", verbatimTextOutput("summary"))
))) )
)
