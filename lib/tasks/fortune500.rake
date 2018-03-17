require 'csv'
namespace :fortune500 do
  desc "Pull all data into the database"
  task seed_fortune500: :environment do

    #drop old data before importing new data
    Company.destroy_all
    State.destroy_all
  	Sector.destroy_all
  	Industry.destroy_all
    Fortune2016.destroy_all
    Fortune2015.destroy_all
    Fortune2014.destroy_all
    Fortune2013.destroy_all
    Fortune2012.destroy_all
    Fortune2011.destroy_all
    Fortune2010.destroy_all
    Fortune2009.destroy_all
    Fortune2008.destroy_all

  	CSV.foreach("lib/assets/Fortune-500/states.csv", :headers =>true) do |row |

      #create new model instances with the data
      State.create!(
      name: row[0],
      abrv: row[1],
      population: row[2].to_i
    )
    end

    CSV.foreach("lib/assets/Fortune-500/sectors.csv", :headers =>true) do |row |
      
      #create new model instances with the data
      Sector.create!(
      name: row[0]
    )
    end

    CSV.foreach("lib/assets/Fortune-500/industries.csv", :headers =>true) do |row |
      
      #create new model instances with the data
      Industry.create!(
      name: row[0]
    )
    end

    CSV.foreach("lib/assets/Fortune-500/2016Fortune500.csv", :headers =>true) do |row |
      
      #create new model instances with the data
      Fortune2016.create!(
      rank: row[0].to_i,
      name: row[1],
      symbol: row[2],
      revenue: row[3].to_f,
      web: row[4]
    )
    end

    CSV.foreach("lib/assets/Fortune-500/2015Fortune500.csv", :headers =>true) do |row |
      
      #create new model instances with the data
      Fortune2015.create!(
      rank: row[0].to_i,
      name: row[1],
      revenue: row[2].to_f
    )
    end

    CSV.foreach("lib/assets/Fortune-500/2014Fortune500.csv", :headers =>true) do |row |
      
      #create new model instances with the data
      Fortune2014.create!(
      rank: row[0].to_i,
      name: row[1]
    )
    end

    CSV.foreach("lib/assets/Fortune-500/2013Fortune500.csv", :headers =>true) do |row |
      
      #create new model instances with the data
      Fortune2013.create!(
      rank: row[0].to_i,
      name: row[1]
    )
    end

    CSV.foreach("lib/assets/Fortune-500/2012Fortune500.csv", :headers =>true) do |row |
      
      #create new model instances with the data
      Fortune2012.create!(
      rank: row[0].to_i,
      name: row[1]
    )
    end

    CSV.foreach("lib/assets/Fortune-500/2011Fortune500.csv", :headers =>true) do |row |
      
      #create new model instances with the data
      Fortune2011.create!(
      rank: row[0].to_i,
      name: row[1]
    )
    end

    CSV.foreach("lib/assets/Fortune-500/2010Fortune500.csv", :headers =>true) do |row |
      
      #create new model instances with the data
      Fortune2010.create!(
      rank: row[0].to_i,
      name: row[1]
    )
    end

    CSV.foreach("lib/assets/Fortune-500/2009Fortune500.csv", :headers =>true) do |row |
      
      #create new model instances with the data
      Fortune2009.create!(
      rank: row[0].to_i,
      name: row[1]
    )
    end

    CSV.foreach("lib/assets/Fortune-500/2008Fortune500.csv", :headers =>true) do |row |
      
      #create new model instances with the data
      Fortune2008.create!(
      rank: row[0].to_i,
      name: row[1]
    )
    end

  	CSV.foreach("lib/assets/Fortune-500/2017Fortune500.csv", :headers =>true) do |row |

  		state = State.find_by(abrv: row[9])
    	state_id = state ? state.id.to_i : nil

      sector = Sector.find_by(name: row[4])
      sector_id = sector ? sector.id.to_i : nil

      industry = Industry.find_by(name: row[5])
      industry_id = industry ? industry.id.to_i : nil

      r2016 = Fortune2016.find_by(name: row[1])
      rank2016 = r2016 ? r2016.rank.to_i : nil


      r2015 = Fortune2015.find_by(name: row[1])
      rank2015 = r2015 ? r2015.rank.to_i : nil


      r2014 = Fortune2014.where("lower(name) LIKE ?", "#{row[1].downcase}%").first
      rank2014 = r2014 ? r2014.rank.to_i : nil

      r2013 = Fortune2013.where("lower(name) LIKE ?", "#{row[1].downcase}%").first
      rank2013 = r2013 ? r2013.rank.to_i : nil

      r2012 = Fortune2012.where("lower(name) LIKE ?", "#{row[1].downcase}%").first
      rank2012 = r2012 ? r2012.rank.to_i : nil

      r2011 = Fortune2011.where("lower(name) LIKE ?", "#{row[1].downcase}%").first
      rank2011 = r2011 ? r2011.rank.to_i : nil

      r2010 = Fortune2010.where("lower(name) LIKE ?", "#{row[1].downcase}%").first
      rank2010 = r2010 ? r2010.rank.to_i : nil

      r2009 = Fortune2009.where("lower(name) LIKE ?", "#{row[1].downcase}%").first
      rank2009 = r2009 ? r2009.rank.to_i : nil

      r2008 = Fortune2008.where("lower(name) LIKE ?", "#{row[1].downcase}%").first
      rank2008 = r2008 ? r2008.rank.to_i : nil

      #create new model instances with the data
      Company.create!(
      rank: row[0].to_i,
      name: row[1],
      web: row[2],
      employees: row[3].to_i,
      sector_id: sector_id,
      industry_id: industry_id,
      address: row[7],
      city: row[8],
      zip: row[10],
      tel: row[11],
      ceo: row[12],
      ceo_title: row[13],
      ticker: row[15],
      full_name: row[16],
      revenue: row[17].to_f,
      revchange: row[18].to_f,
      profit: row[19].to_f,
      profchange: row[20].to_f,
      assets: row[21].to_f,
      totshequity: row[22].to_f,
      market_value: row[23].to_f,
      state_id: state_id,
      rank2016: rank2016,
      rank2015: rank2015,
      rank2014: rank2014,
      rank2013: rank2013,
      rank2012: rank2012,
      rank2011: rank2011,
      rank2010: rank2010,
      rank2009: rank2009,
      rank2008: rank2008,
      lat: row[24],
      long: row[25]
    )
    end

  end

end
