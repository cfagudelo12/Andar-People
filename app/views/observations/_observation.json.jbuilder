json.extract! observation, :id, :date, :comment, :positive, :created_at, :updated_at
json.url observation_url(observation, format: :json)