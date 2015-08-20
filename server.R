library(shiny)
library(randomForest)
data(iris)
rf <- randomForest(Species~.,data=iris)

shinyServer(
    function(input, output) {
        output$input.Sepal.Length <- renderPrint({input$Sepal.Length})
        output$input.Sepal.Width <- renderPrint({input$Sepal.Width})
        output$input.Petal.Length <- renderPrint({input$Petal.Length})
        output$input.Petal.Width <- renderPrint({input$Petal.Width})
        output$prediction <- renderPrint({as.character(predict(rf,data.frame(Sepal.Length=input$Sepal.Length, Sepal.Width=input$Sepal.Width, Petal.Length=input$Petal.Length, Petal.Width=input$Petal.Width)))})
    }
)