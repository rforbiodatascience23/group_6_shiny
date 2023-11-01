#' Translation UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_Translation_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' Translation Server Functions
#'
#' @noRd 
mod_Translation_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_Translation_ui("Translation_1")
    
## To be copied in the server
# mod_Translation_server("Translation_1")
