json.extract! job, :id, :start_date, :finish_date, :role_id, :department_id, :user_id, :created_at, :updated_at
json.url job_url(job, format: :json)