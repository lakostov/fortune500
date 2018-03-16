class AddRank2009ToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :rank2009, :integer
  end
end
