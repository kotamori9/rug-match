class RecruitmentsController < ApplicationController
  
  def index

  end

  def new
    @recruitment = Recruitment.new
  end

  def create
    @recruitment = Recruitment.new(recruitment_params)
    if @recruitment.save
      redirect_to root_path
    else
      redirect_to new_recruitment_path, notice: '全ての項目を入力してください。'
    end
  end

  private
  def recruitment_params
    params.require(:recruitment).permit(:teamname, :area, :category, :introduction, :category_id, :recruitment_id).merge(user_id: current_user.id)
  end
end