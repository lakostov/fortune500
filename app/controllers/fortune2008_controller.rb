class Fortune2008Controller < ApplicationController
  def index
    @companies = Fortune2008.all.paginate(page: params[:page], per_page: 30)
  end
end
