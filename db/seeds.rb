# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.create(name: 'asdf', age: 15, gender: 'Female', latitude: 45.0019, longitude: 13.1290)

Country.create(name: 'madeup', development: '1st', warring: false, mortality_distribution: [
    {
      "age": 45,
      "mortality_percent": 0
    },
    {
      "age": 50,
      "mortality_percent": 0.32602975245435656
    },
    {
      "age": 55,
      "mortality_percent": 2.6558263887814597
    }])
