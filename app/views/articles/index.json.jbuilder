json.array!(@articles) do |article|
  json.extract! article, :id, :title, :author, :description, :year, :publisher
  json.url article_url(article, format: :json)
end
