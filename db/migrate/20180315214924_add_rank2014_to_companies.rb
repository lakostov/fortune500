class AddRank2014ToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :rank2014, :integer
  end
end
