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

#==============

puts "Seeding user"
#later

puts "Seeding histories"

History.create(user_id: 2, blood_sugar_fasting: 4.7, blood_sugar_after_meal: 7.2, systolic_blood_pressure: 114.6, diastolic_blood_pressure: 72.4, pulse_rate: 74.9, created_at: DateTime.now)

History.create(user_id: 2, blood_sugar_fasting: 6.4, blood_sugar_after_meal: 7.2, systolic_blood_pressure: 122.6, diastolic_blood_pressure: 64.3, pulse_rate: 73.4, created_at: DateTime.now + 1.day)

History.create(user_id: 2, blood_sugar_fasting: 6.0, blood_sugar_after_meal: 10.0, systolic_blood_pressure: 123.0, diastolic_blood_pressure: 71.3, pulse_rate: 76.3, created_at: DateTime.now + 2.day)

History.create(user_id: 2, blood_sugar_fasting: 4.7, blood_sugar_after_meal: 6.2, systolic_blood_pressure: 114.3, diastolic_blood_pressure: 70.4, pulse_rate: 82.3, created_at: DateTime.now + 3.day)

History.create(user_id: 2, blood_sugar_fasting: 4.6, blood_sugar_after_meal: 6.3, systolic_blood_pressure: 112.6, diastolic_blood_pressure: 64.3, pulse_rate: 81.4, created_at: DateTime.now + 4.day)

History.create(user_id: 2, blood_sugar_fasting: 4.9, blood_sugar_after_meal: 6.5, systolic_blood_pressure: 111.2, diastolic_blood_pressure: 70.8, pulse_rate: 75.3, created_at: DateTime.now + 5.day)

History.create(user_id: 2, blood_sugar_fasting: 6.1, blood_sugar_after_meal: 6.5, systolic_blood_pressure: 113.5, diastolic_blood_pressure: 71.7, pulse_rate: 81.7, created_at: DateTime.now + 6.day)

History.create(user_id: 2, blood_sugar_fasting: 6.1, blood_sugar_after_meal: 6.5, systolic_blood_pressure: 113.5, diastolic_blood_pressure: 71.7, pulse_rate: 81.7, created_at: DateTime.now + 7.day)

History.create(user_id: 2, blood_sugar_fasting: 4.7, blood_sugar_after_meal: 6.2, systolic_blood_pressure: 124.6, diastolic_blood_pressure: 70.9, pulse_rate: 76.0, created_at: DateTime.now + 8.day)

History.create(user_id: 2, blood_sugar_fasting: 4.7, blood_sugar_after_meal: 6.2, systolic_blood_pressure: 110.6, diastolic_blood_pressure: 73.5, pulse_rate: 75.3, created_at: DateTime.now + 8.day)

History.create(user_id: 2, blood_sugar_fasting: 6.2, blood_sugar_after_meal: 9.9, systolic_blood_pressure: 120.0, diastolic_blood_pressure: 70.0, pulse_rate: 80.0, created_at: DateTime.now + 9.day)


puts "Seeding done!"

