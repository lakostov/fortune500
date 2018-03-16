class CreateFortune2013s < ActiveRecord::Migration[5.1]
  def change
    create_table :fortune2013s do |t|
      t.integer :rank
      t.string :name

      t.timestamps
    end
  end
end
