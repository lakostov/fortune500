class AddRank2012ToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :rank2012, :integer
  end
end
