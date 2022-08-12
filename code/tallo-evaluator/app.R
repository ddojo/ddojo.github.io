#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
library(gt)
library(mltools)

truth <- read_tsv("../../sessions/14_trees/truth.tsv") %>%
  rename(truth=species) %>%
  mutate(truth=factor(truth,levels=unique(truth)))

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("DataDojo Tallo Evaluator"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            fileInput("pred", "Prediction"),
        ),

        # Show a plot of the generated distribution
        mainPanel(
          img(src="fagus.svg", height=100, width=100),
          img(src="pinus.svg", height=100, width=100),
          img(src="quercus.svg", height=100, width=100),
          h2("Metrics"),
          gt_output("metrics"),
          h2("Confusion Matrix"),
          plotOutput("confusion")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

  get_pred <- reactive({
    file <- input$pred
    ext <- tools::file_ext(file$datapath)
    dp <- "random.tsv"
    if(!is.null(file)){
      validate(need(ext == "tsv", "Please upload a tsv file"))
      dp <- file$datapath
    }
    
    read_tsv(dp) %>%
      mutate(pred=factor(species,levels=unique(truth$truth))) %>%
      left_join(truth) %>%
      mutate(correct=(truth==pred))
  })
  
  output$contents <- render_gt({
    get_pred() %>%
      count(pred, truth) %>%
      complete(pred, truth, fill=list(n=0)) %>%
      pivot_wider(names_from=pred, values_from=n) %>%
      gt %>%
      data_color(
        columns=`Quercus ilex`,
        colors = scales::col_numeric(
          palette = c("red", "orange", "green", "blue"),
          domain = c(0, 9000)
        )
      )
  })
  
  output$metrics <- render_gt({
    pr <- get_pred()
    acc <- pr %>% pull(correct) %>% mean
    matthew <- mcc(pr$pred, pr$truth)
    tibble(
      metric=c("Accuracy","Matthew Correlation"),
      value=c(acc, matthew)
    ) %>%
    gt() %>%
      data_color(
        columns=value,
        colors = scales::col_numeric(
          palette = c("red", "orange", "green"),
          domain = c(0, 1)
        )
      )
  })
  
  output$confusion <- renderPlot({
    get_pred() %>%
      count(pred, truth) %>%
      complete(pred, truth, fill=list(n=0)) %>%
      ggplot(aes(pred,truth,fill=n)) +
        geom_tile() +
        geom_text(aes(label=n)) +
        scale_y_discrete(limits=rev)
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)
