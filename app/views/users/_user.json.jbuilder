json.extract! user, :id, :name, :identification, :identification_type, :student_code, :email, :phone, :photo, :semester, :careers, :volunteering_agreement, :created_at, :updated_at
json.url user_url(user, format: :json)