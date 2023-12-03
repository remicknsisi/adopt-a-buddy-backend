require 'faker'

puts "🌱 Seeding data..."

10.times do
    Listing.create(
        image: "https://dog.ceo/api/breeds/image/random",
        name: Faker::Creature::Dog.name,
        species: "dog",
        sex: Faker::Creature::Dog.gender,
        age: rand(1..15),
    )
end

10.times do
    Listing.create(
        image: "https://dog.ceo/api/breeds/image/random",
        name: Faker::Creature::Cat.name,
        species: "cat",
        sex: Faker::Creature::Dog.gender,
        age: rand(1..15),
    )
end

puts "✅ Done seeding!"