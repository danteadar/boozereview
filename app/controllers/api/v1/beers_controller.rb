class Api::V1::BeersController < ApplicationController

  def index
    @beers = Unirest.get("http://api.brewerydb.com/v2/beers/?key=#{ENV['BREWERYDB_API_KEY']}&withBreweries=Y").body['data']
    render 'index.json.jbuilder'

  end

  def find_by_name
    @api_beers = @beers.where(name: keyword)
  end
end
