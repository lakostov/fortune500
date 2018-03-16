class AddRank2008ToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :rank2008, :integer
  end
end
