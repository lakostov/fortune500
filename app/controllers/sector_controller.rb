class SectorController < ApplicationController
  def index
    @sectors = Sector.all.paginate(page: params[:page], per_page: 30)
  end

  def show
    @sector = Sector.find(params[:id])
    all_industries = Company.where(["sector_id = ?", "#{params[:id]}"])
    @industries = all_industries.select(:industry_id).distinct
  end
end
