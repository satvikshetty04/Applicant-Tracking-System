json.extract! job, :id, :company_id, :job_description, :employment_type, :responsibilities, :requirements, :created_at, :updated_at
json.url job_url(job, format: :json)
