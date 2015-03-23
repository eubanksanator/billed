class AddDueDateToBills < ActiveRecord::Migration
  def change
    add_column :bills, :due_date, :integer
  end
end
