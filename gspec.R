#INEL Gamma Spectroscopy data viewer

library(shiny)

row <- function(...) {
  tags$div(class="row", ...)
}

col <- function(width, ...) {
  tags$div(class=paste0("span", width), ...)
}

server <- function(input, output) {
}

ui <- shinyUI(bootstrapPage(
  headerPanel("PDF VIEWER"),
  mainPanel(
    tags$div(
      class = "container",
      row(
      col(2, tags$iframe(style="height:400px; width:100%",src="http://www4vip.inl.gov/gammaray/catalogs/nai/pdf/u-ore.pdf"))
      )
    )
  )
))

shinyApp(ui = ui, server = server)
