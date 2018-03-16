class CreateFortune2012s < ActiveRecord::Migration[5.1]
  def change
    create_table :fortune2012s do |t|
      t.integer :rank
      t.string :name

      t.timestamps
    end
  end
end
