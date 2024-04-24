class PagesController < ApplicationController
  
  def square_new
    render({ :template => "pages_templates/square_new" })
  end

  def square_results
    @number = params.fetch("number").to_f
    render({ :template => "pages_templates/square_results" })
  end

  def square_root_new
    render({ :template => "pages_templates/square_root_new" })
  end

  def square_root_results
    @number = params.fetch("number").to_f
    render({ :template => "pages_templates/square_root_results" })
  end

  def payment_new
    render({ :template => "pages_templates/payment_new" })
  end

  def payment_results
    @apr = params.fetch("apr").to_f
    @years = params.fetch("years").to_f
    @pv = params.fetch("pv").to_f
    @numerator = (((@apr / 100) / 12)) * @pv
    @denominator = 1 - ( (1 + (((@apr / 100) / 12)) ) ** (-12 * @years) )
    @result = @numerator / @denominator

    render({ :template => "pages_templates/payment_results" })
  end

  def random_new
    render({ :template => "pages_templates/random_new" })
  end

  def random_results
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
    @result = rand(@min..@max)
    
    render({ :template => "pages_templates/random_results" })
  end

end
