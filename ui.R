library(shiny)
shinyUI(navbarPage(
  title = 'Predict the species of the iris flower',
  tabPanel('Prediction',
           sidebarLayout(
             sidebarPanel(
               sliderInput('Sepal.Length', 'Sepal Length',value = 5.843, min = 4.300, max = 7.900, step = 0.001),
               sliderInput('Sepal.Width', 'Sepal Width',value = 3.057, min = 2.000, max = 4.400, step = 0.001),
               sliderInput('Petal.Length', 'Petal Length',value = 3.758, min = 1.000, max = 6.900, step = 0.001),
               sliderInput('Petal.Width', 'Petal Width',value = 1.199, min = 0.100, max = 2.500, step = 0.001)
             ),
             mainPanel(
               h2('Results of prediction'),
               h4('You entered Sepal Length'),
               verbatimTextOutput("input.Sepal.Length"),
               h4('You entered Sepal Width'),
               verbatimTextOutput("input.Sepal.Width"),
               h4('You entered Petal Length'),
               verbatimTextOutput("input.Petal.Length"),
               h4('You entered Petal Width'),
               verbatimTextOutput("input.Petal.Width"),
               h4('Which is predicted to be'),
               verbatimTextOutput("prediction")
             )
           )),
  tabPanel('Help',
           fluidRow(column(6,
                           tags$h4("Go to prediction tab and select the sepal length and width, petal length and width using the sliders on the left. The values you select will be reflected on the right side and the last row will display the prediction. Basically there are 3 species of iris flower i.e. setosa, versicolor, and virginica that this app will predict."))),
           fluidRow(column(6,
                           tags$h4("The prediction model was build using Edgar Anderson's Iris Data."))))
  
))