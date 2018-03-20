class Fortune2009Controller < ApplicationController
  def index
    @companies = Fortune2009.all.paginate(page: params[:page], per_page: 30)
  end
end
