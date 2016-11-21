namespace :import_dental do 

	# desc "Import dental clinics from csv"
	# puts "import dental clinics"
	# task facilities: :environment do
	# 	filename = File.join Rails.root, "clinicdental.csv"
	# 	counter = 0

	# 	CSV.foreach(filename, headers: true) do |row|
	# 	facility = Facility.create!(state: row[1], name: row[2], street: row[3], city: row[4], website: row[5], telephone: row[7], facility_type: row[15])
	# 		counter += 1 if facility.persisted?
	# 	end

	# 	puts "Imported #{counter} facilities"
		
		puts "import hospital"
		filename = File.join Rails.root, "hospital_location.csv"

		CSV.foreach(filename, headers: true) do |row|
			facility = Facility.create!(facility_type: row[0], name: row[1], district: row[3], state: row[4], latitude: row[5], longitude: row[6], bed_no: row[7])
			counter += 1 if facility.persisted?
		end

		puts "Imported #{counter} facilities"
	
	end

end