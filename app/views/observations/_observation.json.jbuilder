json.extract! observation, :id, :date, :comment, :positive, :user_id, :author_id, :created_at, :updated_at
json.url observation_url(observation, format: :json)