class SectorController < ApplicationController
  def index
    @sectors = Sector.all.paginate(page: params[:page], per_page: 30)
  end

  def show
    @sector = Sector.find(params[:id])
    all_industries = Company.where(["sector_id = ?", "#{params[:id]}"])
    @industries = Company.select(:industry_id).distinct
    @num_companies = all_industries.count
  end

  def companies
    @sector = Sector.find(params[:id])
    @companies = Company.where("sector_id = ?", "#{params[:id]}")
  end
end
