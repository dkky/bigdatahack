# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding user"
#later

puts "Seeding histories"

History.create(user_id: 2, blood_sugar_fasting: 4.7, blood_sugar_after_meal: 7.2, systolic_blood_pressure: 114.6, diastolic_blood_pressure: 72.4, pulse_rate: 74.9, created_at: DateTime.now - 9.day)

History.create(user_id: 2, blood_sugar_fasting: 6.4, blood_sugar_after_meal: 7.2, systolic_blood_pressure: 122.6, diastolic_blood_pressure: 64.3, pulse_rate: 73.4, created_at: DateTime.now - 8.day)

History.create(user_id: 2, blood_sugar_fasting: 6.0, blood_sugar_after_meal: 10.0, systolic_blood_pressure: 123.0, diastolic_blood_pressure: 71.3, pulse_rate: 76.3, created_at: DateTime.now - 7.day)

History.create(user_id: 2, blood_sugar_fasting: 4.7, blood_sugar_after_meal: 6.2, systolic_blood_pressure: 114.3, diastolic_blood_pressure: 70.4, pulse_rate: 82.3, created_at: DateTime.now - 6.day)

History.create(user_id: 2, blood_sugar_fasting: 4.6, blood_sugar_after_meal: 6.3, systolic_blood_pressure: 112.6, diastolic_blood_pressure: 64.3, pulse_rate: 81.4, created_at: DateTime.now - 5.day)

History.create(user_id: 2, blood_sugar_fasting: 4.9, blood_sugar_after_meal: 6.5, systolic_blood_pressure: 111.2, diastolic_blood_pressure: 70.8, pulse_rate: 75.3, created_at: DateTime.now - 4.day)

History.create(user_id: 2, blood_sugar_fasting: 6.1, blood_sugar_after_meal: 6.5, systolic_blood_pressure: 113.5, diastolic_blood_pressure: 71.7, pulse_rate: 81.7, created_at: DateTime.now - 3.day)

History.create(user_id: 2, blood_sugar_fasting: 4.7, blood_sugar_after_meal: 6.2, systolic_blood_pressure: 124.6, diastolic_blood_pressure: 70.9, pulse_rate: 76.0, created_at: DateTime.now - 2.day)

History.create(user_id: 2, blood_sugar_fasting: 4.7, blood_sugar_after_meal: 6.2, systolic_blood_pressure: 110.6, diastolic_blood_pressure: 73.5, pulse_rate: 75.3, created_at: DateTime.now - 1.day)

History.create(user_id: 2, blood_sugar_fasting: 6.2, blood_sugar_after_meal: 9.9, systolic_blood_pressure: 120.0, diastolic_blood_pressure: 70.0, pulse_rate: 80.0, created_at: DateTime.now)


puts "Seeding done!"