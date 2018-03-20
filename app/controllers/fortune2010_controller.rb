class Fortune2010Controller < ApplicationController
  def index
    @companies = Fortune2010.all.paginate(page: params[:page], per_page: 30)
  end
end
