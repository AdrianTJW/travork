json.array!(@contents) do |content|
  json.extract! content, :id, :category_name, :category_description, :images, :admin_id
  json.url content_url(content, format: :json)
end
