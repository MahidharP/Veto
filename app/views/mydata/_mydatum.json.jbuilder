json.extract! mydatum, :id, :student_name, :user, :created_at, :updated_at
json.url mydatum_url(mydatum, format: :json)