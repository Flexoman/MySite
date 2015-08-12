json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :status, :priority
  json.url task_url(task, format: :json)
end
