class Fortune2008Controller < ApplicationController
  before_action :logged_in_user, only: [:index]
  def index
    @companies = Fortune2008.all.paginate(page: params[:page], per_page: 30)
  end
end
