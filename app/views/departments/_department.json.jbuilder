json.extract! department, :id, :name, :description, :repository_url, :repository_user, :repository_password, :created_at, :updated_at
json.url department_url(department, format: :json)