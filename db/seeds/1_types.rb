Type.destroy_all
puts "Creating types"

Type.create!(name: "Tecnología")
Type.create!(name: "Deportes")
Type.create!(name: "Zapatos")
Type.create!(name: "Gamer")

puts "Ending types"