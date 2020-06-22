class TopsController < ApplicationController
  before_action :set_recruitment, only: [:index]

  def index
    @recruitments = Recruitment.all
    @area = Areahash.find(@recruitment.area)
  end

  private

  def set_recruitment
    @recruitment = Recruitment.find_by(params[:id])
  end
end
