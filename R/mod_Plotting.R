#' Plotting UI Function
#'
#' @description A shiny Module.
#'
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_Plotting_ui <- function(id){
  ns <- NS(id)
  tagList(
    sidebarLayout(
      sidebarPanel(
        textAreaInput(
          inputId = ns("peptide"),
          label = "Insert peptide sequence",
          width = 300,
          height = 100,
          placeholder = "ADGILAH"
        )
      ),
      mainPanel(
        plotOutput(
          outputId = ns("abundance")
        )

      )
    )
  )
}

#' Plotting Server Functions
#' @import CentralDogmaMD
#' @importFrom ggplot2 theme
#' @noRd
mod_Plotting_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$abundance <- renderPlot({
      if(input$peptide == ""){
        NULL
      } else{
        input$peptide |>
          CentralDogmaMD::PlotAA() +
          ggplot2::theme(legend.position = "none")
      }
    })
  })
}

## To be copied in the UI
# mod_Plotting_ui("Plotting_1")

## To be copied in the server
# mod_Plotting_server("Plotting_1")
