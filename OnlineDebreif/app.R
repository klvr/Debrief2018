#Shiny app for debrief
##runApp("OnlineDebreif", display.mode = "showcase") #will run the app with the code displayed

library(shiny)

# Text - Navigate to line X for code
intro1 <- "This page contains a brief debrief for a project in probabilistic reasoning, in which you participated in 2018."
intro2 <- "In the session you completed a total of six tasks, and a debrief questionnaire. Most tasks (referred to as \"Jar-tasks\" and \"Box-tasks\"), are tasks in which you gathered information before reaching a decision (i.e., information sampling tasks),"

ui <- fluidPage(
    titlePanel("Debrief for 2018-participants"),
    navlistPanel(
        tabPanel("Introduction",
                 h1("Introduction"),
                 p(intro1),
                 br(),
                 p(intro2),
                 p(includeText(text.txt))),
        "Jar-tasks",
        tabPanel("One jar"),
        tabPanel("Auditory"),
        tabPanel("Two jars"),
        "Box-tasks",
        tabPanel("Box task"),
        tabPanel("Disorganized box-task"),
        "Other tasks",
        tabPanel("Risk and ambiguity task"),
        tabPanel("Debrief"),
        "Summary",
        tabPanel("Overview"),
        tabPanel("About")
    )
)

server <- function(input, output) {
}

shinyApp(ui = ui, server = server)

