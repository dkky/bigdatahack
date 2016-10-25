namespace :import_dental do 

	desc "Import dental clinics from csv"
	task facilities: :environment do
		filename = File.join Rails.root, "clinicdental.csv"
		counter = 0

		CSV.foreach(filename, headers: true) do |row|
			facility = Facility.create!(state: row[1], name: row[2], street: row[3], city: row[4], website: row[5], telephone: row[7])
			counter += 1 if facility.persisted?
		end

		puts "Imported #{counter} users"
	end
end