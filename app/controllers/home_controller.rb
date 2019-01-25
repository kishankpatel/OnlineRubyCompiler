class HomeController < ApplicationController
 skip_before_action :verify_authenticity_token  
  def index
  end

  def run_code
  	begin
  	  result = eval(params[:query])
  	rescue Exception => e
  	  result = e.message
  	end
  	render plain: result
  end
end
