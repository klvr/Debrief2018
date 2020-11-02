#Shiny app for debrief
##runApp("OnlineDebreif", display.mode = "showcase") #will run the app with the code displayed

###Todo: check that the provided ID actually exists in the data-set

library(shiny)

ui <- fluidPage(
    titlePanel("Debrief for 2018-participants"),
    navlistPanel(
        tabPanel("Introduction",includeMarkdown(path = "introduction.Rmd"), checkboxInput("understand","I understand the information above", value=FALSE), numericInput("id", "My ID is:", value=0), submitButton("Save"), textOutput("saved_var")),
        "Jar-tasks",
        tabPanel("One jar", includeMarkdown(path = "onejar.Rmd")),
        tabPanel("Auditory", includeMarkdown(path = "auditory.Rmd")),
        tabPanel("Two jars", includeMarkdown(path = "twojars.Rmd")),
        "Box-tasks",
        tabPanel("Box", includeMarkdown(path = "boxtask.Rmd")),
        tabPanel("Disorganized box", includeMarkdown(path = "disorganizedbox.Rmd")),
        "Other tasks",
        tabPanel("Risk and ambiguity (ART)", includeMarkdown(path = "riskandambiguity.Rmd")),
        tabPanel("CAPE", includeMarkdown(path = "cape.Rmd")),
        tabPanel("Debrief", includeMarkdown(path = "debrief.Rmd")),
        "Overview",
        tabPanel("Summary", includeMarkdown(path = "summary.Rmd")),
        tabPanel("About",includeMarkdown(path = "about.Rmd"))
    )
)

server <- function(input, output) {
    output$saved_var <- renderText({
        if(input$id*input$understand > 0) {paste("Your personal scores will be displayed, ID:", input$id) }
        else { paste("You have chosen to not display your own scores, or have yet to consent and provide an ID") }
    })
}

shinyApp(ui = ui, server = server)

