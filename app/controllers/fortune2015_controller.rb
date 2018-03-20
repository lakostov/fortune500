class Fortune2015Controller < ApplicationController
  def index
    @companies = Fortune2015.all.paginate(page: params[:page], per_page: 30)
  end
end
