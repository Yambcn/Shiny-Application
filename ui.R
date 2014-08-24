library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Calculation of the total cost of a Loan"),
  sidebarPanel(
    h4('Introduction / Documentation'),
    h5('The goal of this application is to calculate to cost of amortization of a
        loan. In this application just amortization for fixed loans could be 
        calculated. The user should introduce 3 inputs, the total money that want 
        to request, the interest rate that is required to deliver this money and 
        the years that are need to pay back that money. Once that the user 
        introduce these 3 inputs,just should press the bar Submit and the 
        results will be shown on the Main Panel'),
    h4('Inputs'),
    numericInput('money', 'Quantity of money that we request', 0, min=0, max=100000000000),
    numericInput('interest', 'Interest ratio in %', 0, min=0, max=100),
    numericInput('years', 'number of years to pay back', 0, min=0, max=100),
    submitButton('Submit')
  ),
  mainPanel(
    h4('Output information'),
    h5('Here the results are displayed, first one is the quantity that the user 
       should pay every month to return the loan in the required period, second 
       is the total interest that the user will pay by the end of the loan 
       considering the introduced inputs, the last one will be the total amount 
       that the user will have to pay back for that loan'),
    h3('Results of the calculation'),
    h4('Monthly payment'),
    verbatimTextOutput("pm"),
    h4('Total Interest payment'),
    verbatimTextOutput("pi"),
    h4('Total quantity to return'),
    verbatimTextOutput("P")
  )
))
