require 'net/http'
class Fortune2017Controller < ApplicationController
  def index
    @companies = Company.all.paginate(page: params[:page], per_page: 30)
  end

  def show
    @company = Company.find(params[:id])
    source = "https://api.iextrading.com/1.0/stock/#{@company.ticker}/quote"
    resp = Net::HTTP.get_response(URI.parse(source))
    data = resp.body
    @quote = JSON.parse(data)
    @ranking = Hash.new
    @ranking["2017"] = @company.rank
    @ranking["2016"] = @company.rank2016
    @ranking["2015"] = @company.rank2015
    @ranking["2014"] = @company.rank2014
    @ranking["2013"] = @company.rank2013
    @ranking["2012"] = @company.rank2012
    @ranking["2011"] = @company.rank2011
    @ranking["2010"] = @company.rank2010
    @ranking["2009"] = @company.rank2009
    @ranking["2008"] = @company.rank2008
  end
end
