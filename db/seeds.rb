# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 category = [{name: 'Sport 2', description: 'We can see clothes of your favorite athletes'},
             {name: 'Koepp Group', description: 'Reduced real-time pricing structure'},   
             {name: 'Rosenbaum - Greenholt', description: 'Synergized real-time knowledge user'},   
             {name: 'Windler Group', description: 'Intuitive multi-state adapter'},   
            ]

category.each do |category|
  Category.create!(category)
end

puts 'Created category!'