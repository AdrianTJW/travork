json.array!(@jobs) do |job|
  json.extract! job, :id, :company_name, :description, :address, :country, :city, :type, :job_name, :images, :start_date, :end_date, :host_id, :user_id, :content_id
  json.url job_url(job, format: :json)
end
