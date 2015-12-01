# censusVis
Demonstration of Shiny R using the censusVis app from the tutorial:  http://shiny.rstudio.com/tutorial/lesson5/


The files in this repository are used to demonstrate the deployment of a simple R Shiny app.

The app can be deployed by using the runGitHub() function in the shiny package.

On your local machine, load the package and call the runGitHub() function using the username and repository title for where the code is stored. This will download the program, compile it, and initiate the HTML user interface in a web browswer. You can play with the app on your local machine, and it will simulate a live webpage.

```r
# install.packages( "shiny" )

library( shiny )

runGitHub( repo="censusVis", username="lecy")
```

If you want to create a permenant webpage with a URL, you need to create a Shiny Applications Online account.

http://www.shinyapps.io/
