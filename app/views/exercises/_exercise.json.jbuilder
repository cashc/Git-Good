json.extract! exercise, :id, :name, :description, :objective, :instructions, :difficulty, :created_at, :updated_at
json.url exercise_url(exercise, format: :json)
