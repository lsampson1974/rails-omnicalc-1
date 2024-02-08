class CalcController < ApplicationController

    def squared

        render ({ :template => "layouts/square"})

    end

  #------------------------------------------------------------

    def square_result
  
        @user_number = params[:user_number].to_f

        @square = @user_number * @user_number

        render ({ :template => "layouts/square_result"})
  
    end # of method squared_root

    #===========================================================
  
    def square_root

        render ({ :template => "layouts/square_root"})

    end


  #------------------------------------------------------------

    def sqr_result

        @user_number = params[:user_number].to_f

        @square_root_of_number = Math.sqrt(@user_number)

        render ({ :template => "layouts/sqr_result"})

    end

  #------------------------------------------------------------

    def payment

        render ({ :template => "layouts/payment"})

    end

  #------------------------------------------------------------

    def payment_result

      user_percentage = params[:user_apr]
      percentage = user_percentage.to_f
      interest_rate_period = percentage/100
      interest_rate_period /= 12
  
      user_percentage = user_percentage.to_f
  
      @display_percentage = user_percentage.to_fs(:percentage, {:precision => 4})
  
      @user_years = params[:user_years]
      number_monthly_periods = @user_years.to_i*12
  
      user_principle = params[:user_pv]
      principle = user_principle.to_f
  
      @display_principle = principle.to_fs(:currency)
  
      numerator = interest_rate_period * principle
      denominator = 1 - (1 + interest_rate_period)**-(number_monthly_periods)
  
      payment = numerator / denominator
  
      @display_payment = payment.to_fs(:currency)
  
      render ({ :template => "layouts/payment_result"})

    end

  #------------------------------------------------------------

  def random

    render ({ :template => "layouts/random"})

  end

  #------------------------------------------------------------

  def random_result
    
      @min_number = params[:user_min].to_f
      @max_number = params[:user_max].to_f

      @random_number = rand(@min_number..@max_number)


      render ({ :template => "layouts/random_result"})

  end


end # Of class.
