#https://htmlcolorcodes.com/colors/eggshell/
library(shiny)
library(bslib)
library(htmltools)
# Define UI for application that draws a histogram

vbox <- function(label = 'label',
           textid = 'textOutput_here',
           col = 'darksalmon') {
    shiny::tags$div(class='grow',
      style =paste0(
        "border-radius: 15px;
                      border-style: solid;
                      border-color:white;
            padding:0px;
            margin:0px 10px;
            width:200px;
            color:white;
                  font-weight: 300;
                  text-color:blue;
                  text-align:center;
                  background-color:",col,";"),
      shiny::tags$h5(label, style = 'color:white;'),
      shiny::tags$h2(style = 'font-weight:bold;display: inline-block;vertical-align:top;color:white;',
         textid)
    )
  }

  ui <- fluidPage(
   #theme=bslib::bs_theme(primary = '#C70039',
   #                                    fg = '#581845',
   #                                    bg = '#F0EAD6',
   #                                    version = 4),
      includeCSS("www/styles.css"),
      
      htmltools::HTML('<style>
    #tooltip {
      background-color: #333;
      color: white;
      padding: 5px 10px;
      border-radius: 4px;
      width:30%
      font-size: 13px;}
  </style>'),
      
      tags$script("$(function () {
    $('[data-toggle='tooltip']').tooltip()
  })"
  ),
      # Application title
      titlePanel("Old Faithful Geyser Data"),
          
      # Sidebar with a slider input for number of bins 
      sidebarLayout(
          sidebarPanel(
      
              sliderInput("bins",
                          "Number of bins:",
                          min = 1,
                          max = 50,
                          value = 30)
          ),
  
          # Show a plot of the generated distribution
          mainPanel(
              h1(class='header','Header'),br(),br(),
              vbox('tracked metric','£ 500 M'),br(),br(),
                      #p(class= 'an', 'animated text'),
             div(class='supercard',h1('supercard')),fillRow(height=100),
             HTML(
             #<!-- BS3 -->
  '<span class="badge badge-pill badge-primary">42</span>
  
  #<!-- BS4 -->
  <span data-toggle="tooltip" class="badge badge-secondary">wenkl</span>
  <span class="badge badge-pill badge-light">Light</span>
  
  <button type="button" class="btn btn-primary">
    Messages <span class="badge badge-light">4</span>
  </button>
  
  #<!-- BS5 -->
  <span class="badge badge-primary">New</span>'),
  br(),
  div(class= 'box',fillRow(height=100,p('hello'))),
  br(),
  vbox('3','f'),
  br(),
  fillRow(height=100,a(class='box','click',title='this is a tooltip'),
          a(href='#','click',style='width:300;'),
          a('click')),
  htmltools::HTML('<button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
    Tooltip on top
  </button>'),
  htmltools::HTML('<button id="button" aria-describedby="tooltip">Im a button</button>'),
  htmltools::HTML('<div id="tooltip" role="tooltip">Im a tooltip</div>'),
  htmltools::HTML('<script src="https://unpkg.com/@popperjs/core@2" <script>'),
  htmltools::HTML("<script>
    const button = document.querySelector('#button');
    const tooltip = document.querySelector('#tooltip');
    // Pass the button, the tooltip, and some options, and Popper will do the
    // magic positioning for you:
    Popper.createPopper(button, tooltip, {
      placement: 'right',
    });
  </script>"),
  br(),
  
  HTML('<div class="btn-group-horizontal">
    <button type="button" class="btn btn-primary">Apple</button>
    <button type="button" class="btn btn-primary">Samsung</button>
    <div class="btn-group">
      <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
         Sony
      </button>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Tablet</a>
        <a class="dropdown-item" href="#">Smartphone</a>
      </div>
    </div>
  </div>'),br(),br(),br(),
  
  htmltools::HTML('<div class="card" style="width: 18rem;">
    
    <img class="card-img-top" src="img.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Docker gui</h5>
      <p class="card-text">This the docker images page, It shows the images that have been <b>built</b> and are ready to run</p>
      <a href="#" class="btn btn-primary" style="border-color:white;">Explore more ...</a>
    </div>
  </div>'),br(),br(),br(),fillRow(height=500,
  HTML('<div width=300 height=300 id="demo" class="carousel slide" data-ride="carousel">
  
    <!-- Indicators -->
    <ul class="carousel-indicators">
      <li style="color:black" data-target="#demo" data-slide-to="0" class="active"></li>
      <li style="color:black" data-target="#demo" data-slide-to="1"></li>
      <li style="color:black" data-target="#demo" data-slide-to="2"></li>
    </ul>
  
    <!-- The slideshow -->
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="img.png" width=100% height=100% alt="my image">
      </div>
      <div class="carousel-item">
        <img src="chart_flow_chart.jpeg" width=100% height=100% alt="Chicago">
      </div>
      <div class="carousel-item">
        <img src="mo_farah_larne.jpg" width=100% height=100% alt="New York">
      </div>
    </div>
  
    <!-- Left and right controls -->
    <a style="color:black" class="carousel-control-prev" href="#demo" data-slide="prev">
      <span style="color:black" class="carousel-control-prev-icon"></span>
    </a>
    <a style="color:black" class="carousel-control-next" href="#demo" data-slide="next">
      <span style="color:black" class="carousel-control-next-icon"></span>
    </a>
  
  </div>'))
          )
      )
  )

# Define server logic required to draw a histogram
server <- function(input, output) {

    # output$distPlot <- renderPlot({
    #     # generate bins based on input$bins from ui.R
    #     x    <- faithful[, 2]
    #     bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    #     # draw the histogram with the specified number of bins
    #     hist(x, breaks = bins, col = 'darkgray', border = 'white')
    # })
}

# Run the application 
shinyApp(ui = ui, server = server)
