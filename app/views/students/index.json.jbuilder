json.array!(@students) do |student|
  json.extract! student, :first_name, :last_name, :age, :gender, :bio
  json.url student_url(student, format: :json)
end
