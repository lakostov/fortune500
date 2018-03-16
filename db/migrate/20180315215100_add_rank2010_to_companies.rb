class AddRank2010ToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :rank2010, :integer
  end
end
