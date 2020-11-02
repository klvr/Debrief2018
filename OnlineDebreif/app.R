#Shiny app for debrief
##runApp("OnlineDebreif", display.mode = "showcase") #will run the app with the code displayed

library(shiny)

ui <- fluidPage(
    titlePanel("Debrief for 2018-participants"),
    navlistPanel(
        tabPanel("Introduction",includeMarkdown(path = "introduction.Rmd")),
        "Jar-tasks",
        tabPanel("One jar", includeMarkdown(path = "onejar.Rmd")),
        tabPanel("Auditory", includeMarkdown(path = "auditory.Rmd")),
        tabPanel("Two jars", includeMarkdown(path = "twojars.Rmd")),
        "Box-tasks",
        tabPanel("Box", includeMarkdown(path = "boxtask.Rmd")),
        tabPanel("Disorganized box", includeMarkdown(path = "disorganizedbox.Rmd")),
        "Other tasks",
        tabPanel("Risk and ambiguity", includeMarkdown(path = "riskandambiguity.Rmd")),
        tabPanel("CAPE", includeMarkdown(path = "cape.Rmd")),
        tabPanel("Debrief", includeMarkdown(path = "debrief.Rmd")),
        "Overview",
        tabPanel("Summary", includeMarkdown(path = "summary.Rmd")),
        tabPanel("About",includeMarkdown(path = "about.Rmd"))
    )
)

server <- function(input, output) {
}

shinyApp(ui = ui, server = server)

