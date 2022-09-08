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

theme_set(theme_light())
options(repr.plot.res=300)

truth <- read_tsv("../../sessions/14_trees/truth.tsv") %>%
  rename(truth=species) %>%
  mutate(truth=factor(truth,levels=unique(truth)))

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("DataDojo Tallo Evaluator"),
    img(src="fagus.svg", height=100, width=100),
    img(src="pinus.svg", height=100, width=100),
    img(src="quercus.svg", height=100, width=100),
    
    h1("Leaderboard"),
    gt_output("leaderboard"),

    h1("Upload Prediction"),
    div("Will be added to the leaderboard if a name is provided"),
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            textInput("name", "Name"),
            textInput("description", "Description"),
            fileInput("pred", "Prediction"),
        ),

        # Show a plot of the generated distribution
        mainPanel(
          h2("Metrics"),
          tableOutput("metrics"),
          h2("Confusion Matrix"),
          plotOutput("confusion")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  reloadTrigger <- reactiveVal(0) 
  
  get_pred <- reactive({
    file <- input$pred
    ext <- tools::file_ext(file$datapath)
    dp <- "random.tsv"
    validate(need(!is.null(file), "Please upload a prediction"))
    if(!is.null(file)){
      validate(need(ext == "tsv", "Please upload a tsv file"))
      dp <- file$datapath
    }
    
    pr <- read_tsv(dp) %>%
      mutate(pred=factor(species,levels=unique(truth$truth))) %>%
      right_join(truth) %>%
      mutate(correct=(truth==pred))
    
    if(isolate(input$name != "")){
      miss <- sum(is.na(pr$correct))/nrow(pr)
      acc <- pr %>% pull(correct) %>% mean(na.rm=T)
      matthew <- mcc(pr$pred, pr$truth)
      new_result <- tibble(Name=isolate(input$name), Description=isolate(input$description), Date=lubridate::now(), Accuracy=acc, `Matthews Correlation`=matthew, Missing=miss)
      lb <- read_tsv("results.tsv") %>% bind_rows(new_result)
      lb %>% write_tsv("results.tsv")
      reloadTrigger(nrow(lb))
    }
    
    return(pr)
  })
  
  get_lb <- reactive({
    rt <- reloadTrigger()
    results <- read_tsv("results.tsv")
  })
  
  output$leaderboard <- render_gt({
    get_lb() %>%
      arrange(desc(Accuracy)) %>%
      gt %>%
      fmt_number(
        columns = c(`Accuracy`,`Matthews Correlation`),
        decimals = 3,
        use_seps = FALSE
      ) %>%
      fmt_date(
        columns = Date,
        date_style = 1,
      ) %>%
      sub_missing(
        columns = Description,
        missing_text = ""
      ) %>%
      data_color(
        columns=`Accuracy`,
        colors = scales::col_numeric(
          palette = c("red", "orange", "green"),
          domain = c(0, 1)
        )
      ) %>%
      data_color(
        columns=`Matthews Correlation`,
        colors = scales::col_numeric(
          palette = c("red", "orange", "green"),
          domain = c(0, 1),
          na.color = "red"
        )
      ) %>%
      data_color(
        columns=`Missing`,
        colors = scales::col_numeric(
          palette = c("green", "orange", "red"),
          domain = c(0, .105),
          na.color = "red"
        )
      )
  })
  
  output$metrics <- renderTable({
    pr <- get_pred()
    num_na <- sum(is.na(pr$correct))/nrow(pr)
    acc <- pr %>% pull(correct) %>% mean(na.rm=T)
    matthew <- mcc(pr$pred, pr$truth)
    tibble(
      metric=c("Accuracy","Matthew Correlation","Missing"),
      value=c(acc, matthew, num_na)
    )
  })
  
  output$confusion <- renderPlot({
    get_pred() %>%
      count(pred, truth) %>%
      complete(pred, truth, fill=list(n=0)) %>%
      group_by(truth) %>%
      mutate(rel=n/sum(n)) %>%
      ungroup %>%
      ggplot(aes(pred,truth,fill=rel)) +
        geom_tile() +
        geom_text(aes(label=n)) +
        scale_y_discrete(limits=rev)
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)
