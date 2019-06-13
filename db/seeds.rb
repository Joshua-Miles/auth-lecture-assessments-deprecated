# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ticket.destroy_all
Airline.destroy_all
Traveler.destroy_all

[
    "United",
    'Southwest',
    'Spirit'
].each do | name |
     Airline.create(name: name)
end

[
    { username: 'Roy', password: '1234' },
    { username: 'Kurtis', password: '5678' },
    { username: 'Feven', password: '9101' },
    { username: 'Jason', password: '1121'}
].each do | traveler_attributes |
    # Same as: Traveler.create(name: name)
    traveler = Traveler.new(traveler_attributes)
    traveler.save

    3.times do 
        Ticket.create(traveler_id: traveler.id, airline_id: Airline.all.sample.id)
    end
end