class RemoveDueDateFromBills < ActiveRecord::Migration
  def change
    remove_column :bills, :due_date, :integer
  end
end
