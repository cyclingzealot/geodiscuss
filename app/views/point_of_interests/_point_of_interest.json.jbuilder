json.extract! point_of_interest, :id, :title, :description, :latitude, :longitude, :created_at, :updated_at
json.url point_of_interest_url(point_of_interest, format: :json)
