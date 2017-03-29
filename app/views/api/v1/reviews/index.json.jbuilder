json.array! @reviews do |review|
  json.id review.id
  json.user_id review.user_id
  json.rating review.rating
  json.review review.review
  json.api_beer_id review.api_beer_id
  json.username review.user.user_name
end



