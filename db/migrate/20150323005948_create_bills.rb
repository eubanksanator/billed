class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.string :cycle_start_date
      t.string :cycle_end_date
      t.string :due_date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
