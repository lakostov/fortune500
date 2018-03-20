class Fortune2012Controller < ApplicationController
  def index
    @companies = Fortune2012.all.paginate(page: params[:page], per_page: 30)
  end
end
