# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "You are creating some nice trends.woohoo!"

Trending.create(headline: "Fire breaks out again at Johor Baru hospital", details: "Another fire broke out at Sultanah Aminah Hospital...", latitude: 1.458556, longitude: 103.745965, stats: nil, time: "45")
Trending.create(headline: "Malaysia records 7th Zika case, second for Sabah ", details: "The Health Ministry has received a report on the c...", latitude: 5.9804, longitude: 116.0735, stats: 1, time: "50") 
Trending.create(headline: "Diphtheria claims third death in Malaysia, this ti...", details: "Malaysia has recorded its third death from diphthe...", latitude: 6.0232, longitude: 116.1564, stats: 1, time: "55")
Trending.create(headline: "Rotavirus outbreak linked to Malaysian resort", details: "The Malaysia Ministry of Health has reported (comp...", latitude: 4.9947, longitude: 100.66, stats: 11, time: "57")
Trending.create(headline: "Malaysia places country on alert over outbreak of ...", details: "Hand, foot and mouth disease (HFMD) has reached ou...", latitude: 3.1279, longitude: 101.5945, stats: 83, time: "59")

number = Trending.all.count

puts "you have created #{number} trends. Well done!"