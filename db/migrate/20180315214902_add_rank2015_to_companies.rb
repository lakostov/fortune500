class AddRank2015ToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :rank2015, :integer
  end
end
