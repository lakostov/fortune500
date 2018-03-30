class IndustryController < ApplicationController
  before_action :logged_in_user, only: [:index, :show]
  def index
    @industries = Industry.all.order('name ASC').paginate(page: params[:page], per_page: 30)
  end

  def show
      @industry = Industry.find(params[:id])
      @companies = Company.where("industry_id = ?", params[:id]).paginate(page: params[:page], per_page: 30)
  end
end
