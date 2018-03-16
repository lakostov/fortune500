class AddRank2011ToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :rank2011, :integer
  end
end
