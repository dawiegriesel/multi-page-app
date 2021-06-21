home_ui <- function(id){
  ns <- NS(id)
  tagList(
    #tagList(
    actionButton(ns("browser"), "Browser"),
    h2("This is the home page")
    #)
    )
  }

home <- function(input, output, session){
  ns <- session$ns
  
  observeEvent( input$browser , {
    browser()
  })
  
  
}

# Copy in UI
#homeui("home_ui")

# Copy in server
#callModule(home, "home_ui")
