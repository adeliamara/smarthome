# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

client1 = Client.create(name: "Cliente 1")


num_locations = 10

# Crie registros fictícios para a coluna 'description' em Location
num_locations.times do |n|
  description = "Location #{n + 1}" # Gere uma descrição fictícia para a localização

  # Crie um registro Location com a descrição fictícia
  Location.create!(
    description: description,
    client_id: client1.id
  )
end

Environment.create!(
  description: "1",
  location_id: 1
)

Device.create!(
    description: "1",
    online: true,
    on: true,
    active: true,
    environment_id: 1
)
Device.create!(
    description: "2",
    online: false,
    on: false,
    active: true,
    environment_id: 1

)
Device.create!(
    description: "1",
    online: true,
    on: true,
    active: false,
    environment_id: 1

)
