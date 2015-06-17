json.array!(@updates) do |update|
  json.extract! update, :id, :title, :text, :date
  json.url update_url(update, format: :json)
end
