library(datasets)
data(UCBAdmissions)
admissions<- as.data.frame(UCBAdmissions)

shinyServer(function(input,output) {
  
  output$gender <- renderText({
    paste("You have selected Gender = ", input$Gender)
  })
  output$admit <- renderText({
    paste("You have selected Admission Status = ", input$Admit)
  })
  output$mean <- renderText({
    mean1 <- mean(admissions[admissions$Admit == input$Admit 
                  & admissions$Gender==input$Gender,4])
    paste("Mean = ", mean1)
  })
  output$sd <- renderText({
    sd1 <- sd(admissions[admissions$Admit == input$Admit 
                         & admissions$Gender==input$Gender,4])
    paste("Standard Deviation = ", sd1)
  })
  output$dept<-renderPlot({
    pie(admissions[admissions$Admit == input$Admit 
                   & admissions$Gender==input$Gender,4], 
      labels=admissions[admissions$Admit == input$Admit 
                      & admissions$Gender==input$Gender,3],
      main="Counts by Department")
  })
}
    
  )