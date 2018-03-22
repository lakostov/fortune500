class IndustryController < ApplicationController
  def index
    @industries = Industry.all.paginate(page: params[:page], per_page: 30)
  end

  def show
      @industry = Industry.find(params[:id])
      @companies = Company.where("industry_id = ?", "#{params[:id]}").paginate(page: params[:page], per_page: 30)
  end
end
