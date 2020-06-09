class TopsController < ApplicationController
  
  def index
    @recruitments = Recruitment.all.order(id: "DESC")
    # @area = Areahash.find(@recruitments.area)
  end

end
