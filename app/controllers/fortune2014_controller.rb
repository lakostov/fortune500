class Fortune2014Controller < ApplicationController
  def index
    @companies = Fortune2014.all.paginate(page: params[:page], per_page: 30)
  end
end
