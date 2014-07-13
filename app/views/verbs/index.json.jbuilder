json.array!(@verbs) do |verb|
  json.extract! verb, :id, :name
  json.url verb_url(verb, format: :json)
end
