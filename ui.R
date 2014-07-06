library(shiny)


shinyUI(fluidPage(
  title = 'Examples of DataTables',
  sidebarLayout(
    sidebarPanel(
      conditionalPanel(
        'input.typ === "Variabler"',
        checkboxGroupInput('show_vars', 'Visa kolumner:', names(data),
                          selected = c("schema", "tabell"))
      ),
      conditionalPanel(
        'input.typ === "Kodtabeller"',
        selectInput("dataset", "välj kodtabell:", 
                    choices = c("BT.Beslutstyp", "HEJ.Kommun"))
      )
    ),
  
    mainPanel(
      tabsetPanel(
        id = 'typ',
        tabPanel('Variabler', dataTableOutput('mytable1')),
        tabPanel('Kodtabeller', dataTableOutput('mytable2'))
      )
    )
  )
))