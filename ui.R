##This Shiny application uses the UCBAdmissions dataset
##This dataset has 3 features ond one metric
##

shinyUI(fluidPage(
  titlePanel("Course Project - Analyze UCB Admissions",
             windowTitle="kumaran"),
  
  sidebarLayout(
    sidebarPanel(
        h3("Choose Filters"),
        br(),
        radioButtons("Gender","Gender : ",
            c("Male" = "Male", "Female" = "Female")   
                     ),
        br(),
        radioButtons("Admit","Admission Status : ",
                     c("Admitted" = "Admitted", 
                       "Rejected" = "Rejected")   
        ),
        br(),
        actionButton("action",label="Action"),
        br()
                 
                 ),
    mainPanel(
      h1("Statistics"),
      p("This application computes mean and standard deviation
        across departments for Male and Female students 
        and whether are admitted or rejected"),
      p("It uses the UCBAdmissions dataset. This dataset has
        3 features - Department, Gender and Admission Status.
        It has counts by these features.
        You will choose the Gender and Admission Status from 
        the left pane. This application will then compute the
        mean and standard deviation for that selection and 
        display the same. This will be the mean across It will also show a pie chart for the
        selected data"),
      textOutput("gender"),
      textOutput("admit"),
      br(),
      textOutput("mean"),
      textOutput("sd"),
      br(),
      plotOutput("dept"),
      br()
        
              
              
              )
    )
  ))