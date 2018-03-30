class ApiController < ApplicationController
  before_action :logged_in_user
  before_action :subscribed_user
  def fortune2017
    render json: @result = params[:id] ? Company.find(params[:id]) : Company.all
  end

  def fortune2016
    render json: @result = params[:id] ? Fortune2016.find(params[:id]) : Fortune2016.all
  end

  def fortune2015
    render json: @result = params[:id] ? Fortune2015.find(params[:id]) : Fortune2015.all
  end

  def fortune2014
    render json: @result = params[:id] ? Fortune2014.find(params[:id]) : Fortune2014.all
  end

  def fortune2013
    render json: @result = params[:id] ? Fortune2013.find(params[:id]) : Fortune2013.all
  end

  def fortune2012
    render json: @result = params[:id] ? Fortune2012.find(params[:id]) : Fortune2012.all
  end

  def fortune2011
    render json: @result = params[:id] ? Fortune2011.find(params[:id]) : Fortune2011.all
  end

  def fortune2010
    render json: @result = params[:id] ? Fortune2010.find(params[:id]) : Fortune2010.all
  end

  def fortune2009
    render json: @result = params[:id] ? Fortune2009.find(params[:id]) : Fortune2009.all
  end

  def fortune2008
    render json: @result = params[:id] ? Fortune2008.find(params[:id]) : Fortune2008.all
  end

  def sectors
    render json: @result = params[:id] ? Sector.find(params[:id]) : Sector.all
  end

  def industries
    render json: @result = params[:id] ? Industry.find(params[:id]) : Industry.all
  end

  def states
    render json: @result = params[:id] ? State.find(params[:id]) : State.all
  end
end
