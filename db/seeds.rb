# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.destroy_all
Airport.destroy_all
Airline.destroy_all

locations = [
  { name: "Abuja" },
  { name: "Kano" },
  { name: "Lagos" },
  { name: "Port Harcourt" },
]

@saved_locations = {}
locations.each do |location|
  @saved_locations[location[:name]] = Location.create(location)
end


airports = [
  { name: "Nnamdi Azikwe International Airport", location: @saved_locations['Abuja'] },
  { name: "Mallam Aminu Kano International Airport", location: @saved_locations['Kano'] },
  { name: "Murtala Muhammed International Airport", location: @saved_locations['Lagos'] },
  { name: "Port Harcourt International Airport", location: @saved_locations['Port Harcourt'] },
]

@saved_airports = {}
airports.each do |airport|
  @saved_airports[airport[:name]] = Airport.create!(airport)
end


airlines = [
  { name: "Swiss International Air Lines", no_of_passengers: 100 },
  { name: "Virgin Atlantic", no_of_passengers: 150 },
  { name: "Nigeria Airways", no_of_passengers: 50 },
]

@saved_airlines = {}
airlines.each do |airline|
  @saved_airlines[airline[:name]] = Airline.create!(airline)
end

def save_flight(destination, airport, airline, limit=3)
  count = 1
  limit.times do |i|
    Flight.create(
      destination: @saved_locations[destination],
      flight_date: count.day.from_now,
      airport: @saved_airports[airport],
      airline: @saved_airlines[airline],
      available_seats: 10
    )
    count = (limit * i) + rand(1..6)
  end
end

save_flight('Lagos', 'Nnamdi Azikwe International Airport', 'Nigeria Airways', 5)
save_flight('Kano', 'Nnamdi Azikwe International Airport', 'Nigeria Airways')
save_flight('Port Harcourt', 'Nnamdi Azikwe International Airport', 'Nigeria Airways')
save_flight('Kano', 'Nnamdi Azikwe International Airport', 'Swiss International Air Lines')
save_flight('Port Harcourt', 'Nnamdi Azikwe International Airport', 'Swiss International Air Lines')

save_flight('Abuja', 'Murtala Muhammed International Airport', 'Nigeria Airways', 5)
save_flight('Kano', 'Murtala Muhammed International Airport', 'Nigeria Airways')
save_flight('Port Harcourt', 'Murtala Muhammed International Airport', 'Nigeria Airways')
save_flight('Abuja', 'Murtala Muhammed International Airport', 'Virgin Atlantic')
save_flight('Kano', 'Murtala Muhammed International Airport', 'Virgin Atlantic')
save_flight('Port Harcourt', 'Murtala Muhammed International Airport', 'Virgin Atlantic')

save_flight('Abuja', 'Mallam Aminu Kano International Airport', 'Nigeria Airways')
save_flight('Lagos', 'Mallam Aminu Kano International Airport', 'Nigeria Airways')
save_flight('Port Harcourt', 'Mallam Aminu Kano International Airport', 'Nigeria Airways', 1)
save_flight('Abuja', 'Mallam Aminu Kano International Airport', 'Swiss International Air Lines')

save_flight('Kano', 'Port Harcourt International Airport', 'Swiss International Air Lines', 2)
save_flight('Lagos', 'Port Harcourt International Airport', 'Swiss International Air Lines')
save_flight('Abuja', 'Port Harcourt International Airport', 'Virgin Atlantic')
save_flight('Kano', 'Port Harcourt International Airport', 'Virgin Atlantic')
save_flight('Lagos', 'Port Harcourt International Airport', 'Virgin Atlantic')