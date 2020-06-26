# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#  category = [{name: 'Sport 2', description: ''},
#              {name: 'Koepp Group', description: 'Reduced real-time pricing structure'},   
#              {name: 'Rosenbaum - Greenholt', description: 'Synergized real-time knowledge user'},   
#              {name: 'Windler Group', description: 'Intuitive multi-state adapter'},   
#             ]

# category.each do |category|
#   Category.create!(category)
# end

# puts 'Created category!'

Client.create total_name: 'Albin', address: '261 Steuber Mission', phone_number: '6164546500'
Client.create total_name: 'Marilyne', address: '849 Schultz Plains', phone_number: '454654654'
Client.create total_name: 'Kolby', address: '09260 Botsford Mill', phone_number: '5456465465'
Client.create total_name: 'Evans', address: '0098 Padberg Curve', phone_number: '4545674645'

puts 'Client created!'