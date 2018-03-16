class CreateFortune2008s < ActiveRecord::Migration[5.1]
  def change
    create_table :fortune2008s do |t|
      t.integer :rank
      t.string :name

      t.timestamps
    end
  end
end
