json.array! @beers do |beer|
  json.name beer['name']
  json.description beer['description']
  json.abv beer['abv']
  json.style beer['style']
  json.glass beer['glass']
  json.brewery beer['breweries'][0]['name']
  json.brewery_url beer['breweries'][0]['website']
  json.brewery_image_url beer['breweries'][0]['images']
  json.ibu beer['ibu']
  json.api_beer_id beer['id']
  json.labels beer['labels']
end