class SearchController < ApplicationController
  def index
    if params[:name] != ""
    redirect_to action: params[:category].downcase, name: params[:name].downcase
    else
    redirect_to root_path
    end
  end

  def company
    @companies = Company.where("lower(name) LIKE ?", "%"+params[:name]+"%")
  end

  def sector
    @sectors = Sector.where("lower(name) LIKE ?", "%"+params[:name]+"%")
  end

  def industry
    @industries = Industry.where("lower(name) LIKE ?", "%"+params[:name]+"%")
  end

  def state
    @states = State.where("lower(name) LIKE ?", "%"+params[:name]+"%")
  end
end
