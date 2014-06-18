library(shiny)

shinyUI(fluidPage(
  
  # Application title
  
  titlePanel("European Capitals Quiz: try to guess each capital and then click Submit!"),
  
   # Instructions
  
fluidRow("INSTRUCTIONS: For the assigment I've created a pretty simple survey, 
where you have to associate each european capital with the correct country.
Click on Submit! when finished and see your final score, from 0 to 9. 
You can change your answers and retry as many times as you wish.
The application uses 9 radio buttons (single choiche answers), arranged in 3 columns, using the fluidPage
layout. On the Server side, a conditional operation is performed in a reactive way and 
1 point is assigned for each correct answer. Each time the button 
Submit is pressed, the calculation is performed again."),
  
  # Page layout with radio buttons
  
  fluidRow(
    column(4,
           wellPanel(
    radioButtons("q1", strong("Italy"),
                 c("Don't know"="0",
                   "Rome" = "1",
                   "Milan" = "2",
                   "Florence" = "3"), 
                 selected="0"),
    radioButtons("q2", strong("UK"),
                c("Don't know"="0",
                  "Belfast" = "1",
                  "London" = "2",
                  "Glasgow" = "3"), 
                selected="0"),
    radioButtons("q3", strong("Spain"),
                c("Don't know"="0",
                  "Valencia" = "1",
                  "Barcelona" = "2",
                  "Madrid" = "3"), 
                selected="0"))),
    column(4, wellPanel(
    radioButtons("q4", strong("France"),
                 c("Don't know"="0",
                   "Marseille" = "1",
                   "Paris" = "2",
                   "Lyone" = "3"), 
                 selected="0"),
    radioButtons("q5", strong("Czech Republic"),
                 c("Don't know"="0",
                   "Brno" = "1",
                   "Ostrava" = "2",
                   "Prague" = "3"), 
                 selected="0"),
    radioButtons("q6", strong("Portugal"),
                 c("Don't know"="0",
                   "Porto" = "1",
                   "Lisbon" = "2",
                   "Coimbra" = "3"), 
                 selected="0"))),
    column(4, wellPanel(
    radioButtons("q7", strong("Germany"),
                 c("Don't know"="0",
                   "Munich" = "1",
                   "Frankfurt" = "2",
                   "Berlin" = "3"), 
                 selected="0"),
    radioButtons("q8", strong("Romania"),
                 c("Don't know"="0",
                   "Bucharest" = "1",
                   "Budapest" = "2",
                   "Warsaw" = "3"), 
                 selected="0"),
    radioButtons("q9", strong("Greece"),
                 c("Don't know"="0",
                   "Athens" = "1",
                   "Sparta" = "2",
                   "Crete" = "3"), 
                 selected="0"))),
    
    # Submit button
    
    wellPanel( submitButton("Submit!"), 
               strong("Your score is:", 
               textOutput("total"), 
               "out of 9"), 
               textOutput("message"),
               align="center")
  )
))
