library(shiny)

shinyServer(function(input, output) {
  
  # a large table, reactive to input$show_vars
  output$mytable1 = renderDataTable({
   data[, input$show_vars, drop = FALSE]
  }
  , options = list(bSortClasses = TRUE)
  
 )
 
 output$mytable2 <- renderDataTable(
{Indata <- 
   switch(input$dataset,
          "BT.Beslutstyp" = BT.Beslutstyp,
          "HEJ.Kommun" = HEJ.Kommun
   )}
 )
})
      