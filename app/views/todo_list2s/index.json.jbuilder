json.array!(@todo_list2s) do |todo_list2|
  json.extract! todo_list2, :id, :title, :description
  json.url todo_list2_url(todo_list2, format: :json)
end
