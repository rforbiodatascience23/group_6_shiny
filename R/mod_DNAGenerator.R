#' DNAGenerator UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_DNAGenerator_ui <- function(id){
  ns <- NS(id)
  tagList(fluidRow(
    column(8, "DNA_sequence"),
    column(4, "random_dna_length", "generate_dna_button")
  ),
  "Insert peptide sequence"

  )
}

#' DNAGenerator Server Functions
#'
#' @noRd
mod_DNAGenerator_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_DNAGenerator_ui("DNAGenerator_1")

## To be copied in the server
# mod_DNAGenerator_server("DNAGenerator_1")
