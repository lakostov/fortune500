class Fortune2016Controller < ApplicationController
  def index
    @companies = Fortune2016.all.paginate(page: params[:page], per_page: 30)
  end
end
