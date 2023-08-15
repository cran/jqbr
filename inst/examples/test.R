NumberGen <- R6::R6Class(
  "NumberGen",
  public = list(
    new_number = NULL,
    initialize = function() {
      self$new_number <- rnorm(1)
    },
    add_number = function(number) {
      1 + number
    }
  )
)


NumberGen2 <- R6::R6Class(
  "NumberGen2",
  public = list(
    number = NULL,
    initialize = function() {
      self$number <- NumberGen$new()
    },
    add_number = function(number) {
      self$number
    }
  )
)

test <- NumberGen$new()
test2 <- NumberGen2$new()

test2$number$add_number(5)

test2$number$new_number



test$number
test2$number

library(shiny)
library(qbr)

ui <- fluidPage(
  useQueryBuilder(),
  queryBuilderInput(
    inputId = "qb",
    filters = list(list(
      id = "name",
      title = "Name",
      type = "string"
    )),
    conditions = c("AND", "OR", "NOT"),
    return_value = "rules"
  ),
  textOutput("rules")
)

server <- function(input, output) {
  observe({
    print(input$qb)
  })
}

shinyApp(ui, server)
c
pak::local_install_dev_deps()
devtools::install_dev_deps()
1

packer::npm_install()