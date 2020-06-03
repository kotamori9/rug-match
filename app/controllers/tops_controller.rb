class TopsController < ApplicationController

  def index
  end

  def new

  end

  def create
    @recruitment = Recruitment.new(recruitment_params)
    if @recruitment.save
      redirect_to @recruitment
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def recruitment_params
    params.require(:recruitment).permit().merge(user_id: current_user.id)
  end
end
