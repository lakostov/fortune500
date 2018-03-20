class Fortune2013Controller < ApplicationController
  def index
    @companies = Fortune2013.all.paginate(page: params[:page], per_page: 30)
  end
end
