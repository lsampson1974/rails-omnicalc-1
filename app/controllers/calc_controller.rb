class CalcController < ApplicationController

    def squared_result
  
       @user_number = params[:user_number].to_f

       @square = @user_number * @user_number

       render ({ :template => "layouts/square_result"})
  
    end # of method squared_root

    def squared

       render ({ :template => "layouts/square"})

    end
  

end # Of class.
