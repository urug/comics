json.array!(@issues) do |issue|
  json.extract! issue, :book_id, :number, :title, :cover_image_url, :price
  json.url book_issue_url([@book, issue], format: :json)
end
