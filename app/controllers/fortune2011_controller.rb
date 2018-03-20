class Fortune2011Controller < ApplicationController
  def index
    @companies = Fortune2011.all.paginate(page: params[:page], per_page: 30)
  end
end
