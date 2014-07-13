json.array!(@nouns) do |noun|
  json.extract! noun, :id, :name
  json.url noun_url(noun, format: :json)
end
