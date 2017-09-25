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
  { name: "Dutse" },
  { name: "Enugu" },
  { name: "Kano" },
  { name: "Lagos" },
  { name: "Port Harcourt" },
  { name: "Sokoto" },
  { name: "Calabar" },
  { name: "Asaba" },
  { name: "Uyo" }
]

saved_locations = {}
locations.each do |location|
  saved_locations[location[:name]] = Location.create(location)
end


airports = [
  { name: "Nnamdi Azikwe International Airport", location: saved_locations['Abuja'] },
  { name: "Dutse International Airport", location: saved_locations['Dutse'] },
  { name: "Akanu Ibiam International Airport", location: saved_locations['Enugu'] },
  { name: "Mallam Aminu Kano International Airport", location: saved_locations['Kano'] },
  { name: "Murtala Muhammed International Airport", location: saved_locations['Lagos'] },
  { name: "Port Harcourt International Airport", location: saved_locations['Port Harcourt'] },
  { name: "Sadiq Abubakar III International Airport", location: saved_locations['Sokoto'] },
  { name: "Margaret Ekpo International Airport", location: saved_locations['Calabar'] },
  { name: "Asaba International Airport", location: saved_locations['Asaba'] },
  { name: "Akwa Ibom International Airport", location: saved_locations['Uyo'] }
]

saved_airports = {}
airports.each do |airport|
  saved_airports[airport[:name]] = Airport.create!(airport)
end


airlines = [
  { name: "Asiana", no_of_passengers: 50 },
  { name: "Swiss International Air Lines", no_of_passengers: 100 },
  { name: "Virgin Atlantic", no_of_passengers: 150 },
  { name: "Nigerian Airways", no_of_passengers: 50 },
  { name: "Lagos Airways", no_of_passengers: 20 },
  { name: "Abuja Airways", no_of_passengers: 20 },
]

saved_airlines = {}
airlines.each do |airline|
  saved_airlines[airline[:name]] = Airline.create!(airline)
end


flights = [
  { destination: saved_locations['Lagos'], flight_date: 20.day.from_now, airport: saved_airports['Nnamdi Azikwe International Airport'], airline: saved_airlines['Asiana'], available_seats: 10 },
  { destination: saved_locations['Lagos'], flight_date: 25.day.from_now, airport: saved_airports['Nnamdi Azikwe International Airport'], airline: saved_airlines['Virgin Atlantic'], available_seats: 10 },
  { destination: saved_locations['Lagos'], flight_date: 15.day.from_now, airport: saved_airports['Nnamdi Azikwe International Airport'], airline: saved_airlines['Swiss International Air Lines'], available_seats: 10 },
  { destination: saved_locations['Lagos'], flight_date: 50.day.from_now, airport: saved_airports['Nnamdi Azikwe International Airport'], airline: saved_airlines['Abuja Airways'], available_seats: 10 },
  { destination: saved_locations['Lagos'], flight_date: 100.day.from_now, airport: saved_airports['Nnamdi Azikwe International Airport'], airline: saved_airlines['Asiana'], available_seats: 10 },
  { destination: saved_locations['Kano'], flight_date: 20.day.from_now, airport: saved_airports['Nnamdi Azikwe International Airport'], airline: saved_airlines['Swiss International Air Lines'], available_seats: 10 },
  { destination: saved_locations['Kano'], flight_date: 200.day.from_now, airport: saved_airports['Nnamdi Azikwe International Airport'], airline: saved_airlines['Virgin Atlantic'], available_seats: 10 },
  { destination: saved_locations['Kano'], flight_date: 10.day.from_now, airport: saved_airports['Nnamdi Azikwe International Airport'], airline: saved_airlines['Asiana'], available_seats: 10 },
  { destination: saved_locations['Port Harcourt'], flight_date: 3.day.from_now, airport: saved_airports['Nnamdi Azikwe International Airport'], airline: saved_airlines['Virgin Atlantic'], available_seats: 10 },
  { destination: saved_locations['Sokoto'], flight_date: 4.day.from_now, airport: saved_airports['Nnamdi Azikwe International Airport'], airline: saved_airlines['Nigerian Airways'], available_seats: 10 },
  { destination: saved_locations['Abuja'], flight_date: 5.day.from_now, airport: saved_airports['Mallam Aminu Kano International Airport'], airline: saved_airlines['Nigerian Airways'], available_seats: 10 },
  { destination: saved_locations['Abuja'], flight_date: 50.day.from_now, airport: saved_airports['Mallam Aminu Kano International Airport'], airline: saved_airlines['Virgin Atlantic'], available_seats: 10 },
  { destination: saved_locations['Abuja'], flight_date: 15.day.from_now, airport: saved_airports['Mallam Aminu Kano International Airport'], airline: saved_airlines['Swiss International Air Lines'], available_seats: 10 },
  { destination: saved_locations['Uyo'], flight_date: 6.day.from_now, airport: saved_airports['Nnamdi Azikwe International Airport'], airline: saved_airlines['Abuja Airways'], available_seats: 10 },
  { destination: saved_locations['Abuja'], flight_date: 30.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Asiana'], available_seats: 10 },
  { destination: saved_locations['Abuja'], flight_date: 10.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Virgin Atlantic'], available_seats: 10 },
  { destination: saved_locations['Abuja'], flight_date: 100.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Swiss International Air Lines'], available_seats: 10 },
  { destination: saved_locations['Abuja'], flight_date: 15.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Abuja Airways'], available_seats: 10 },
  { destination: saved_locations['Abuja'], flight_date: 20.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Nigerian Airways'], available_seats: 10 },
  { destination: saved_locations['Abuja'], flight_date: 35.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Asiana'], available_seats: 10 },
  { destination: saved_locations['Dutse'], flight_date: 10.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Nigerian Airways'], available_seats: 10 },
  { destination: saved_locations['Enugu'], flight_date: 5.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Asiana'], available_seats: 10 },
  { destination: saved_locations['Kano'], flight_date: 20.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Swiss International Air Lines'], available_seats: 10 },
  { destination: saved_locations['Kano'], flight_date: 12.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Swiss International Air Lines'], available_seats: 10 },
  { destination: saved_locations['Kano'], flight_date: 25.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Swiss International Air Lines'], available_seats: 10 },
  { destination: saved_locations['Kano'], flight_date: 92.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Swiss International Air Lines'], available_seats: 10 },
  { destination: saved_locations['Port Harcourt'], flight_date: 3.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Virgin Atlantic'], available_seats: 10 },
  { destination: saved_locations['Sokoto'], flight_date: 4.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Nigerian Airways'], available_seats: 10 },
  { destination: saved_locations['Calabar'], flight_date: 5.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Nigerian Airways'], available_seats: 10 },
  { destination: saved_locations['Uyo'], flight_date: 6.day.from_now, airport: saved_airports['Murtala Muhammed International Airport'], airline: saved_airlines['Abuja Airways'], available_seats: 10 },
  { destination: saved_locations['Sokoto'], flight_date: 4.day.from_now, airport: saved_airports['Port Harcourt International Airport'], airline: saved_airlines['Nigerian Airways'], available_seats: 10 },
  { destination: saved_locations['Calabar'], flight_date: 5.day.from_now, airport: saved_airports['Port Harcourt International Airport'], airline: saved_airlines['Nigerian Airways'], available_seats: 10 },
  { destination: saved_locations['Uyo'], flight_date: 6.day.from_now, airport: saved_airports['Port Harcourt International Airport'], airline: saved_airlines['Abuja Airways'], available_seats: 10 }
]

flights.each do |flight|
  Flight.create!(flight)
end