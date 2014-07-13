# create 300 nouns
puts "Creating nouns"
300.times do
  Noun.create(name: Faker::Hacker.noun)
  Noun.create(name: Faker::Commerce.product_name)
end


# create 300 verbs
puts "Creating verbs"
300.times do
  Verb.create(name: Faker::Hacker.verb)
  Verb.create(name: Faker::Hacker.ingverb)
end
