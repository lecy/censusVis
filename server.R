# server.R

library(maps)
library(mapproj)
counties <- readRDS("data/counties.rds")
source("helpers.R")



shinyServer(


  function(input, output) {

    output$map1 <- renderPlot({
      data <- switch(input$var1, 
        "Percent White" = counties$white,
        "Percent Black" = counties$black,
        "Percent Hispanic" = counties$hispanic,
        "Percent Asian" = counties$asian)
    
     color <- switch(input$var1, 
        "Percent White" = "darkgreen",
        "Percent Black" = "black",
        "Percent Hispanic" = "darkorange",
        "Percent Asian" = "darkviolet")
    
      legend <- switch(input$var1, 
        "Percent White" = "% White",
        "Percent Black" = "% Black",
        "Percent Hispanic" = "% Hispanic",
        "Percent Asian" = "% Asian")
  
      percent_map(var1 = data, 
        color = color, 
        legend.title = legend, 
        max = input$range[2], 
        min = input$range[1])
    })
    

    output$map2 <- renderPlot({
      data <- switch(input$var2, 
        "Percent White" = counties$white,
        "Percent Black" = counties$black,
        "Percent Hispanic" = counties$hispanic,
        "Percent Asian" = counties$asian)
    
     color <- switch(input$var2, 
        "Percent White" = "darkgreen",
        "Percent Black" = "black",
        "Percent Hispanic" = "darkorange",
        "Percent Asian" = "darkviolet")
    
      legend <- switch(input$var2, 
        "Percent White" = "% White",
        "Percent Black" = "% Black",
        "Percent Hispanic" = "% Hispanic",
        "Percent Asian" = "% Asian")
  
      percent_map(var2 = data, 
        color = color, 
        legend.title = legend, 
        max = input$range[2], 
        min = input$range[1])
    })
    
    
  }
)
