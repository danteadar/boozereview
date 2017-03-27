json.array! @beers do |beer|
  json.name beer['name']
  json.description beer['description']
  json.abv beer['abv']
  # json.style beer['style']['category']['name']
  # json.glass beer['glass']['name']
  json.brewery beer['breweries'][0]['name']
  json.brewery_url beer['breweries'][0]['website']
  json.ibu beer['ibu']
  json.api_beer_id beer['id']
end