class CreateFortune2009s < ActiveRecord::Migration[5.1]
  def change
    create_table :fortune2009s do |t|
      t.integer :rank
      t.string :name

      t.timestamps
    end
  end
end
