
shinyServer(
function(input, output) {
  
  # Reactive function, to calculate score
  
     output$total<- reactive(
      {if (input$q1=="1") 1 else 0}+
      {if (input$q2=="2") 1 else 0}+
      {if (input$q3=="3") 1 else 0}+
      {if (input$q4=="2") 1 else 0}+
      {if (input$q5=="3") 1 else 0}+
      {if (input$q6=="2") 1 else 0}+
      {if (input$q7=="3") 1 else 0}+
      {if (input$q8=="1") 1 else 0}+
      {if (input$q9=="1") 1 else 0}
      )
}
)
