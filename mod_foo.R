foo_ui <- function(id){
  ns <- NS(id)
  tagList(
    actionButton(ns("browser"), "Browser"),
    h2("This is the foo page")
  )
}

foo <- function(input, output, session){
  ns <- session$ns
  
  observeEvent( input$browser , {
  
    browser()
    
  })
  
  
}

# Copy in UI
#foo_ui("foo_ui")

# Copy in server
#callModule(foo, "foo_ui")
