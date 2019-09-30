# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.destroy_all
User.destroy_all
9.times do |i|
    activities = ["Comer empanadas", "Tomar terremoto", "Encumbrar volantín", "Bailar cueca", "Ir a una fonda", "Salir a bailar", "Jugar al trompo", "Comer pebre", "Dormir"]
    Task.create(
        name: "#{activities[i]}",
        photo: "#{i+1}.jpg"
        )
end