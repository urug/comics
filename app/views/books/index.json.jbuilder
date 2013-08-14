json.array!(@books) do |book|
  json.extract! book, :name, :cover_image_url
  json.url book_url(book, format: :json)
end
