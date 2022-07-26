puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "078986589", category: "Chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "5875756589", category: "Viet"}
luigia =  { name: "Luigia", address: "31 Rue Marchaut, Essex E1 6PQ", phone_number: "23351341", category: "Italian"}
chevrier =  { name: "Chateauvieux", address: "34 duffering street, London E3 QP2", phone_number: "235567686", category: "French"}
chez_monique =  { name: "Chez Monique", address: "34 ering street, Paris E3 QP2", phone_number: "794664646", category: "French"}

[ dishoom, pizza_east, luigia, chevrier, chez_monique ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
