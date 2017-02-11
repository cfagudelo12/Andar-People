json.extract! job, :id, :start_date, :finish_date, :created_at, :updated_at
json.url job_url(job, format: :json)