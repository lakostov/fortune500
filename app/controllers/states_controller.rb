class StatesController < ApplicationController
  before_action :logged_in_user, only: [:index, :show]
  def index
      @states = State.all.paginate(page: params[:page], per_page: 30)
  end

  def show
    @state = State.find(params[:id])
    @companies = Company.where("state_id = ?", params[:id]).paginate(page: params[:page], per_page: 30)
  end
end
