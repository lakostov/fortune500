class CreateFortune2015s < ActiveRecord::Migration[5.1]
  def change
    create_table :fortune2015s do |t|
      t.integer :rank
      t.string :name
      t.float :revenue

      t.timestamps
    end
  end
end
