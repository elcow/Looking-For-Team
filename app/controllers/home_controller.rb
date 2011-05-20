class HomeController < ApplicationController
  def index
	@title = ""
  end

  def contact
	@title = "Contact"
  end
  
  def about
	@title = "About"
  end
  
end
