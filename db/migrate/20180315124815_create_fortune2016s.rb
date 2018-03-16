class CreateFortune2016s < ActiveRecord::Migration[5.1]
  def change
    create_table :fortune2016s do |t|
      t.integer :rank
      t.string :name
      t.string :symbol
      t.float :revenue
      t.string :web

      t.timestamps
    end
  end
end
