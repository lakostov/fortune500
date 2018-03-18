class WelcomeController < ApplicationController
  def index
  	@companies = Company.all
  	@companies_paginated = Company.paginate(page: params[:page], per_page: 20)
  	render :layout => 'map'
  end
end
