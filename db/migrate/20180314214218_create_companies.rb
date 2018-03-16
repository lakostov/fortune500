class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.integer :rank
      t.string :name
      t.string :web
      t.integer :employees
      t.string :city
      t.string :zip
      t.string :tel
      t.string :ceo
      t.string :ceo_title
      t.string :ticker
      t.string :full_name
      t.float :revenue
      t.float :revchange
      t.float :profit
      t.float :profchange
      t.float :assets
      t.float :totshequity
      t.float :market_value
      t.string :lat
      t.string :long
      t.references :sector, foreign_key: true
      t.references :industry, foreign_key: true
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
