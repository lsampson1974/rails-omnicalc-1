Rails.application.routes.draw do

# SQUARED

    get("/", { :controller => "calc", :action => "squared"})
    get("/squared", { :controller => "calc", :action => "squared"})
    get("/square_result", { :controller => "calc", :action => "square_result"})

#-------------------------------------------------------------------------------------    

# SQUARE ROOT

    get("/square_root/new", { :controller => "calc", :action => "square_root"})
    get("/sqr_result", { :controller => "calc", :action => "sqr_result"})

#-------------------------------------------------------------------------------------    
  

# PAYMENT

get("/payment/new", { :controller => "calc", :action => "payment"})
get("/payment_result", { :controller => "calc", :action => "payment_result"})

#-------------------------------------------------------------------------------------    

# RANDOM

get("/random/new", { :controller => "calc", :action => "random"})
get("/random_result", { :controller => "calc", :action => "random_result"})

#-------------------------------------------------------------------------------------    
  



end
