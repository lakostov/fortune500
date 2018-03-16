class CreateFortune2011s < ActiveRecord::Migration[5.1]
  def change
    create_table :fortune2011s do |t|
      t.integer :rank
      t.string :name

      t.timestamps
    end
  end
end
