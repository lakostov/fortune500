class AddRank2016ToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :rank2016, :integer
  end
end
