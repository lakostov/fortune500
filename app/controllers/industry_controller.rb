class IndustryController < ApplicationController
  def index
    @industries = Industry.all.paginate(page: params[:page], per_page: 30)
  end

  def show
      @industry = Industry.find(params[:id])
  end
end
