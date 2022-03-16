home_ui <- function(id){
  ns <- NS(id)
  tagList(
    h2("This is the home page")
    )
  }

home <- function(input, output, session){
  ns <- session$ns
  
}

# Copy in UI
#homeui("home_ui")

# Copy in server
#callModule(home, "home_ui")
