#' Plotting UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_Plotting_ui <- function(id){
  ns <- NS(id)
  tagList(sidebarLayout(
    sidebarPanel(
      "peptide_sequence"
    ),
    mainPanel(
      "plot"
    )
  )

  )
}

#' Plotting Server Functions
#'
#' @noRd
mod_Plotting_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_Plotting_ui("Plotting_1")

## To be copied in the server
# mod_Plotting_server("Plotting_1")
