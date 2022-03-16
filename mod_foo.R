foo_ui <- function(id){
  ns <- NS(id)
  tagList(
    h2("This is the foo page")
  )
}

foo <- function(input, output, session){
  ns <- session$ns
  
}

# Copy in UI
#foo_ui("foo_ui")

# Copy in server
#callModule(foo, "foo_ui")
