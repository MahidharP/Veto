json.extract! myform, :id, :user_id, :student_name, :created_at, :updated_at
json.url myform_url(myform, format: :json)