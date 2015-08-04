class PageController < ApplicationController
  def about_us
  end

  def blog
  end

  def calendar
    @time = Time.now
    @month = params['month'].to_i
    @year = params['year'].to_i
    if( !(@month >= 1 && @month <= 12) )
      @month = @time.strftime( "%m").to_i
    end
    if( @year <= 0 )
      @year = @time.strftime( "%Y" ).to_i
    end
  end

  def contact_us
    @submitted = params["commit"]
    @name = params["name"]
    @form_error = false
    if @name == ""
      flash.now['error'] = "You must enter your name."
      @form_error = true
    end
    @email = params["email"]
    if @email == ""
      flash.now['error'] = "You must enter your email address."
      @form_error = true
    end
    @question = params["question"]
    @newsletter = (params["newsletter"] == "newsletter")
    gender = params["gender"]
    @male = (gender == "Male")
    @female = (gender == "Female")
    @product = params["product"]
  end

  def home
  end

  def login
  end

  def newsletter
  end

  def products
  end
end
