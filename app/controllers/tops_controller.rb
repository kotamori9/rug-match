class TopsController < ApplicationController

  def index
    @recruitments = Recruitment.all
  end
end
