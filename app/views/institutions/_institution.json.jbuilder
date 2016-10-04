json.extract! institution, :id, :name, :description, :address, :email, :state_id, :city_id, :location_id, :created_at, :updated_at
json.url institution_url(institution, format: :json)