# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def random_latitude
  -22.67 + rand(0.001..0.0099)
end

def random_longitude
  -43.38 + rand(0.001..0.0099)
end

200.times do
  PositionDetail.create( { phone_model: 'iPhone 5', carrier: 'VIVO', signal: '-23', latitude: random_latitude, longitude: random_longitude, timestamp: 1929310923 } )
end