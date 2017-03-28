class Api::V1::BeersController < ApplicationController

  def index
    @beers = Unirest.get("http://api.brewerydb.com/v2/beers/?key=#{ENV['BREWERYDB_API_KEY']}&withBreweries=Y").body['data']

    render 'index.json.jbuilder'
  end

  def find_by_name
    @beers = Unirest.get("http://api.brewerydb.com/v2/beers/?key=#{ENV['BREWERYDB_API_KEY']}&withBreweries=Y&name=*#{params[:name]}*").body['data']
    render 'index.json.jbuilder'
  end

end
