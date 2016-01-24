#INEL Gamma Spectroscopy data viewer
# Opens a Viewer to look at gaama  spectroscopy data at Idaho National Engineering Laboratory
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
      col(2, tags$iframe(style="height:800px; width:100%",src="http://www4vip.inl.gov/gammaray/catalogs/nai/pdf/u-ore.pdf"))
      )
    )
  )
))

shinyApp(ui = ui, server = server)
