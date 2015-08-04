json.array!(@comments) do |comment|
  json.extract! comment, :id, :title, :author, :content, :rating, :article_id
  json.url comment_url(comment, format: :json)
end
