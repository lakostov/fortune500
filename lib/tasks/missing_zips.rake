require 'csv'
namespace :missing do
  desc "Pull all data into the database"
  task seed_missing: :environment do

      #update new lat long columns with the data
      zip = 10065
      lat = 40.765
      long = -73.965

      company = Company.where(zip: zip.to_s)
      company.update(lat: lat.to_s, long: long.to_s)

      zip1 = 48033
      lat1 = 42.47
      long1 = -83.29

      company1 = Company.where(zip: zip1.to_s)
      company1.update(lat: lat1.to_s, long: long1.to_s)
    

  end

end
