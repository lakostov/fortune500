class SectorController < ApplicationController
  before_action :logged_in_user, only: [:index, :show, :companies]
  def index
    @sectors = Sector.all.paginate(page: params[:page], per_page: 30)
  end

  def show
    @sector = Sector.find(params[:id])
    all_industries = Company.where(["sector_id = ?", params[:id]])
    @industries = Company.select(:industry_id).distinct.paginate(page: params[:page], per_page: 30)
    @num_companies = all_industries.count
  end

  def companies
    @sector = Sector.find(params[:id])
    @companies = Company.where("sector_id = ?", params[:id]).paginate(page: params[:page], per_page: 20)
  end
end
