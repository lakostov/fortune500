class Fortune2017Controller < ApplicationController
  def index
    @companies = Company.all.paginate(page: params[:page], per_page: 30)
  end

  def show
    @company = Company.find(params[:id])
  end
end
