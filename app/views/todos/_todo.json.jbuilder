json.extract! todo, :id, :name, :duedate, :status, :created_at, :updated_at
json.url todo_url(todo, format: :json)
