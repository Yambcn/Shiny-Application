monthlypay<-function (money, interest, years) {
  
  interest=interest/100;
  ip=1+interest/12;
  ipm=(1-ip^(-12*years));
  (ip-1)/ipm*money; #Money to pay each month
  
}
totalinterest<-function (money, interest, years) {
  
  interest=interest/100;
  ip=1+interest/12;
  ipm=(1-ip^(-12*years));
  pm=(ip-1)/ipm*money; #Money to pay each month
  (pm*12*years)-money; # Total payment on interests
  
}
totalpay<-function (money, interest, years) {
  
  interest=interest/100;
  ip=1+interest/12;
  ipm=(1-ip^(-12*years));
  pm=(ip-1)/ipm*money; #Money to pay each month
  pm*12*years; # Total Payment
  
}
shinyServer(
  function(input, output) {
    output$pm<-renderPrint({monthlypay(input$money,input$interest,input$years)})
    output$pi<-renderPrint({totalinterest(input$money,input$interest,input$years)})
    output$P<-renderPrint({totalpay(input$money,input$interest,input$years)})
  }
)
