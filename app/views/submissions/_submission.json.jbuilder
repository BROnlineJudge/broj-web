json.extract! submission, :id, :verdict, :language, :execution_time, :code, :created_at, :updated_at
json.url submission_url(submission, format: :json)
