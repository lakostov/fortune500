class CreateSubscribtions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscribtions do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, foreign_key: true
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
