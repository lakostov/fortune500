class AddRank2013ToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :rank2013, :integer
  end
end
