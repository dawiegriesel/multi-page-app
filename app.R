
library(shiny)

source('./mod_home.R')
source('./mod_foo.R')

# Define UI for application
ui <- navbarPage("Navbar page", id = "tabs",
                 actionButton("browser", "BROWSER"),
                 tabPanel("Home", uiOutput('home_content')),
                 tabPanel("Foo", uiOutput("foo_content"))
)

# Define server logic 
server <- function(input, output, session) {
    
    observeEvent( input$tabs, {
        
        print(input$tabs)
        
        if(input$tabs == "Home"){
            tictoc::tic("Home")
            output$home_content <- renderUI(
                home_ui("home_ui")
            )
            
            callModule(home, "home_ui")
            tictoc::toc()
        } else {
            tictoc::tic("Foo")
            output$foo_content <- renderUI(
                foo_ui("foo_ui")
            )
            
            callModule(foo, "foo_ui")
            tictoc::toc()
        }
        
    })

    
}
# Run the application 
shinyApp(ui = ui, server = server)
